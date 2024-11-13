import rospy
from std_msgs.msg import String
from nav_msgs.msg import Odometry

global last_odometry_msg
last_odometry_msg = None

def save_odometry_msg(msg):
    global last_odometry_msg
    last_odometry_msg = msg

# Main
if __name__ == '__main__':

    # Starting the node and configuring rate
    rospy.init_node('odom_slow')

    # Odom Slow Publisher
    odom_slow_publisher = rospy.Publisher('/odom_slow', Odometry, queue_size=1)

    # Odom Listener
    rospy.Subscriber('/odom', Odometry, save_odometry_msg)

    # Configuring rate for Node Loop
    rate = rospy.Rate(4)

    # Loop: publishing Odometry messages with defined rate
    while True:
        if last_odometry_msg != None:
            odom_slow_publisher.publish(last_odometry_msg)
        rate.sleep()
    
    # If loop breaks, exit from program
    exit(0)