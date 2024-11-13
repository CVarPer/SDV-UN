#!/usr/bin/env python

import sys
import rospy
import actionlib
from std_srvs.srv import Empty
from std_msgs.msg import Empty as EMsg
from geometry_msgs.msg import PoseStamped
from actionlib_msgs.msg import GoalStatusArray
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseActionGoal

def costmap_cleaner():
    rospy.wait_for_service('move_base/clear_costmaps')
    try:
        cleaner = rospy.ServiceProxy('move_base/clear_costmaps', Empty)
        cleaner()
        rospy.loginfo("COSTMAP_CLEANER: costmap cleaned")
        # print "costmaps cleaned"
    except rospy.ServiceException, e:
        rospy.loginfo("COSTMAP_CLEANER: Clear costmaps service call failed: %s"%e)
        # print "Clear costmaps service call failed: %s"%e

def callback( data ):
    costmap_cleaner()

    #client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    #client.wait_for_server()
    
    #goal = MoveBaseGoal()
    #goal.target_pose.pose = data.pose
    #goal.target_pose.header.frame_id = "map"
    #goal.target_pose.header.stamp = rospy.Time.now()

    #client.send_goal(goal)    
    #wait = client.wait_for_result()
    #costmap_cleaner()

if __name__ == "__main__":
    rospy.init_node('costmap_cleaner')
    source = rospy.get_param("~request_source", True)
    if source:
        rospy.Subscriber("move_base_simple/goal", PoseStamped, callback)
        rospy.Subscriber("move_base/goal", MoveBaseActionGoal, callback)
        rospy.loginfo("COSTMAP_CLEANER: Costmaps will be cleared for every new goal!")
    else:
        rospy.Subscriber("clear_costmap/clear", EMsg, callback)
        rospy.loginfo("COSTMAP_CLEANER: Costmaps will be cleared on request!")
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
