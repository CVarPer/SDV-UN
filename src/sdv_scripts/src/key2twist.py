#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''
This aplication allows to control a ROS Based Mobile Robot with the keyboard,
and needs the 'keyboard_publisher.py' script, that publishes 'keys' messages. 
This node converts messages from 'keys' topic to 'Twist' messages, that are 
sended over 'cmd_vel' topic, by default.

This aplication sends 'Twist' messages, that contains linear and angular 
speeds. Changes in speed values are made with acelerations (ramps).

Parameters that you can configure (speeds and accelerations) are:
 - linear_scale: sets linear speed in m/s
 - angular_scale: sets angular speed in rad/s
 - linear_accel: sets linear acceleration in m/s²
 - angular_accel: sets angular acceleration in rad/s²

Example of use:
rosrun sdv_scripts key_to_twist.py _linear_scale:=1.0 _angular_scale:=1.0
'''

import rospy
import math
from std_msgs.msg import String
from geometry_msgs.msg import Twist

key_mapping = { 'w': [ 1,  0],  # Forward
                's': [-1,  0],  # Backward
                'a': [ 0,  1],  # Turn counter clokcwise
                'd': [ 0, -1],  # Turn clockwise
                'x': [ 0,  0]}  # Stop

g_twist_pub = None
g_target_twist = None
g_last_twist = None
g_last_send_time = None
g_vel_scales = [0.1, 0.1] # default to very slow
g_vel_ramps = [1, 1] # units: meters per second^2
rate = 20
key_stamp = None


def ramped_vel(v_prev, v_target, t_prev, t_now, ramp_rate):
	step = ramp_rate * (t_now - t_prev).to_sec()
	sign = 1.0 if (v_target > v_prev) else -1.0
	error = math.fabs(v_target - v_prev)
	if error < step: # we can get there within this timestep-we're done.
		return v_target
	else:
		return v_prev + sign * step # take a step toward the target


def ramped_twist(prev, target, t_prev, t_now, ramps):
	tw = Twist()
	tw.angular.z = ramped_vel(prev.angular.z, target.angular.z, t_prev, t_now, ramps[0])
	tw.linear.x = ramped_vel(prev.linear.x, target.linear.x, t_prev, t_now, ramps[1])
	return tw


def send_twist():
	global g_last_send_time, g_target_twist, g_last_twist
	global g_vel_scales, g_vel_ramps, g_twist_pub
	t_now = rospy.Time.now()
	g_last_twist = ramped_twist(g_last_twist, 
	                            g_target_twist, 
	                            g_last_send_time, 
	                            t_now, 
	                            g_vel_ramps)
	g_last_send_time = t_now
	g_twist_pub.publish(g_last_twist)


def keys_cb(msg):
	global g_target_twist, g_last_twist, g_vel_scales, key_stamp
	if len(msg.data) == 0 or not key_mapping.has_key(msg.data[0]):
		return # unknown key
	vels = key_mapping[msg.data[0]]
	g_target_twist.linear.x = vels[0] * g_vel_scales[0]
	g_target_twist.angular.z = vels[1] * g_vel_scales[1]
	key_stamp = rospy.Time.now()


def zero_twist():
	g_target_twist.linear.x = 0.0
	g_target_twist.angular.z = 0.0


def fetch_param(name, default):
	if rospy.has_param(name):
		return rospy.get_param(name)
	else:
		print("parameter {} not defined. Defaulting to {}".format(name, default))
		return default


if __name__ == '__main__':

	# Configuring node
	rospy.init_node('keys_to_twist')
	g_last_send_time = rospy.Time.now()
	g_twist_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
	rospy.Subscriber('keys', String, keys_cb)
	rate = rospy.Rate(rate)
	key_stamp = rospy.Time.now()

	# Twist messages
	g_target_twist = Twist() # initializes to zero
	g_last_twist = Twist()

	# Fetching parameters
	g_vel_scales[0] = fetch_param('~linear_scale', 0.1)
	g_vel_scales[1] = fetch_param('~angular_scale', 0.1)
	g_vel_ramps[0] = fetch_param('~linear_accel', 1.0)
	g_vel_ramps[1] = fetch_param('~angular_accel', 1.0)

	# Loop	
	while not rospy.is_shutdown():

		# Checking if some key messages has arrived
		now_stamp = rospy.Time.now()
		if key_stamp is None:
			diff = now_stamp
		else:
			diff = (now_stamp - key_stamp).to_sec()
		if diff > 0.2:
			zero_twist()
		
		# Sending Twist message and sleeping
		send_twist()
		rate.sleep()