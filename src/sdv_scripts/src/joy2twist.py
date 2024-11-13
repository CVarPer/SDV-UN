#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import math
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist

rate = 10.0
dur = 1.0/rate
axes = None
linear_axes = [1, 5]
angular_axes = [0, 4]
target_twist = None
vel_scales = [1.0, 1.0]


def fetch_param(name, default):
    if rospy.has_param(name):
        return rospy.get_param(name)
    else:
        print("parameter {} not defined. Defaulting to {}".format(name, default))
        return default


def set_axes_values(msg):
    global axes
    # Creates a list using axes lenght from joy message
    if axes == None:
        axes = []
        for i in range(0, len(msg.axes)):
            axes.append(0)
    # Copy axes values in list
    for i in range(0, len(msg.axes)):
        axes[i] = msg.axes[i]


def send_twist():
    global vel_scales, axes, target_twist
    if axes == None:
        return
    linear = 0
    angular = 0

    # Selecting higher absolute value for linear speed, reading linear axes
    for i in linear_axes:
        if abs(axes[i]) > abs(linear):
            linear = axes[i]

    # Selecting higher absolute value for angular speed, reading angular axes
    for i in angular_axes:
        if abs(axes[i]) > abs(angular):
            angular = axes[i]
    target_twist.linear.x = linear * vel_scales[0]
    target_twist.angular.z = angular * vel_scales[1]
    twist_pub.publish(target_twist)


if __name__ == '__main__':

    # Configuring node
    rospy.init_node('joy2twist')
    twist_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    rospy.Subscriber('/joy', Joy, set_axes_values)
    rate = rospy.Rate(rate)

    # Twist message
    target_twist = Twist()  # initializes to zero

    # Fetching parameters
    vel_scales[0] = fetch_param('~linear_scale', 1.0)
    vel_scales[1] = fetch_param('~angular_scale', 1.0)

    # Loop
    while not rospy.is_shutdown():

        # Sending Twist message and sleeping
        send_twist()
        rate.sleep()
