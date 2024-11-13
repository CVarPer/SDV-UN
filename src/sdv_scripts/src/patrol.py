#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import math
from sensor_msgs.msg import Joy
from geometry_msgs.msg import PoseStamped

x_values = [0.5, 0.9, 2]
y_values = [-3, -6, -8]
z_values = [-0.7, 0, -0.7]
w_values = [0.7, 1, -0.7]
t_values = [10, 10, 10]
pose_index = 0

def fetch_param(name, default):
    if rospy.has_param(name):
        return rospy.get_param(name)
    else:
        print("parameter {} not defined. Defaulting to {}".format(name, default))
        return default

goal_topic = 'sdvun1/move_base_simple/goal'

# Configuring node
rospy.init_node('patrol')
goal_pub = rospy.Publisher(goal_topic, PoseStamped, queue_size=100)

# Goal message
goal_msg = PoseStamped()
goal_msg.header.frame_id = "map"

# Loop
while not rospy.is_shutdown():

    # Setting Goal message
    goal_msg.header.stamp = rospy.Time.now()
    goal_msg.pose.position.x = x_values[pose_index]
    goal_msg.pose.position.y = y_values[pose_index]
    goal_msg.pose.orientation.z = z_values[pose_index]
    goal_msg.pose.orientation.w = w_values[pose_index]

    # Sending Goal message
    goal_pub.publish(goal_msg)

    # Wait few seconds
    print('Sended pose {} to SDVUN1.'.format(pose_index))
    rospy.sleep(t_values[pose_index])

    # Next Pose Index
    pose_index = pose_index + 1
    if pose_index == 3:
        pose_index = 0

