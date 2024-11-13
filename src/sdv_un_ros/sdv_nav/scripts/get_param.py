#!/usr/bin/env python

import sys
import rospy

if __name__ == "__main__":

    parameter_name = sys.argv
    p = rospy.get_param(parameter_name[1], '')
    print(p)
    exit