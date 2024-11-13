#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''
This node receives UDP packages on default port (4210) and coverts them in 'cmd_vel'
messages, publishing in '/mobile_base/commands/velocity' topic. You can configure 
speed and acceleration using 'linear_scale' and 'angular_scale' parameters.

Parameters that you can configure are:
 - linear_scale: sets linear speed in m/s
 - angular_scale: sets angular speed in rad/s

Example of use:
rosrun sdv_scripts udp_to_twist.py _linear_scale:=1.0 _angular_scale:=1.0
'''
import socket
import threading
from signal import signal, SIGINT
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist

cmd_mapping = {
    'up': [1, 0],
    'down': [-1, 0],
    'right': [0, -1],
    'left': [0, 1],
    'stop': [0, 0]}
g_vel_scales = [0.5, 0.5]
g_twist = None
data = ''
data_stamp = 0.0
UDP_port = 4210
udp_listening = True
rate = 20
stopped = True


class UDP_Thread(threading.Thread):
    '''
    Class that runs a thread that listens for UDP packages, avoiding blocking 
    main thread while is waiting for a new message.
    '''

    def __init__(self):
        '''
        Configures UDP Socket, finding IP address.
        '''
        threading.Thread.__init__(self)

        # Setting UDP socket
        self.UDP_IP = get_ip()
        self.udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.udp_socket.bind((self.UDP_IP, UDP_port))
        self.udp_socket.settimeout(0.5)

        # Print messages about UDP socket
        rospy.loginfo("Starting UDP socket")
        print("Starting UDP socket: ip={}, port={}".format(self.UDP_IP, UDP_port))

    def run(self):
        '''
        Entry point of thread. Enter in a loop while aplication is running, 
        listening for an UDP package. If package not arrives, saves 'stop' value
        in 'data' variable: this allows to stop aplication when a timeout 
        exception ocurs and main thread is finished.
        '''
        global udp_listening, data_stamp
        while udp_listening:
            global data
            try:
                data, addr = self.udp_socket.recvfrom(1024)  # buffer size is 1024 bytes
                data_stamp = rospy.Time.now()
            except:
                data = ""


def get_ip():
    '''
    get_ip(): Returns machine IP
    '''
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        # doesn't even have to be reachable
        s.connect(('10.255.255.255', 1))
        IP = s.getsockname()[0]
    except:
        IP = '127.0.0.1'
    finally:
        s.close()
    return IP


def sigint_handler(signal_received, frame):
    '''
    Allows to stop this aplication using Control + C keyboard combination.
    '''
    # Handle any cleanup here
    print('\nSIGINT or CTRL-C detected. Exiting...')
    global udp_listening
    udp_listening = False


def fetch_param(name, default):
    if rospy.has_param(name):
        return rospy.get_param(name)
    else:
        print("Parameter {} not defined. Defaulting to {}".format(name, default))
        return default


def publish_msg(data, twist_pub):
    '''
    publish_msg(data, twist_pub): Search for command received in data and 
    publish a message in 'cmd_vel' topic using 'twist_pub' publisher.
    '''
    global g_twist, g_vel_scales, stopped
    if len(data) == 0 or not cmd_mapping.has_key(data):
        return  # unknown key
    if not stopped:
        vels = cmd_mapping[data]
        g_twist.linear.x = vels[0] * g_vel_scales[0]
        g_twist.angular.z = vels[1] * g_vel_scales[1]
        twist_pub.publish(g_twist)
    
    # If stopped, only send "stop" data once
    if data == "stop":
        stopped = True
    else:
        stopped = False


# Main
if __name__ == '__main__':

    # Starting the node and configuring rate
    rospy.init_node('udp_to_twist')
    twist_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
    g_twist = Twist()  # initializes to zero
    rate = rospy.Rate(rate)
    data_stamp = rospy.Time.now()

    # Fetching parameters
    g_vel_scales[0] = fetch_param('~linear_scale', g_vel_scales[1])
    g_vel_scales[1] = fetch_param('~angular_scale', g_vel_scales[0])

    # Print Exit message
    print("Press CTRL + C to exit...")

    # Starting UDP thread
    udp_thread = UDP_Thread()
    udp_thread.start()

    # Tell Python to run the sigint_handler() function when SIGINT is recieved
    signal(SIGINT, sigint_handler)

    # Loop: publishing Twist messages with defined rate
    while udp_listening:
        now_stamp = rospy.Time.now()
        dif = (now_stamp - data_stamp).to_sec()
        if dif > (0.2000):
            data = 'stop'
        publish_msg(data, twist_pub)
        rate.sleep()
    
    exit(0)
