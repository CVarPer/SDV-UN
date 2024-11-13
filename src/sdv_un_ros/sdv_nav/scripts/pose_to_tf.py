#!/usr/bin/env python  
import rospy

import tf
from geometry_msgs.msg import PoseStamped 

def handle_pose(msg):
    br = tf.TransformBroadcaster()
    br.sendTransform((msg.pose.position.x, msg.pose.position.y, msg.pose.position.z),
                     (msg.pose.orientation.x, msg.pose.orientation.y, msg.pose.orientation.z, msg.pose.orientation.w),
                     rospy.Time.now(),
                     "base_link",
                     "map")

if __name__ == '__main__':
    rospy.init_node('pose_to_tf')
    rospy.Subscriber('/pf/viz/inferred_pose',
                     PoseStamped,
                     handle_pose)
    rospy.spin()
