#!/usr/bin/env python

import json
import rospy
from actionlib import SimpleActionClient
from std_msgs.msg import String

from geometry_msgs.msg import PoseStamped
from actionlib_msgs.msg import GoalStatusArray, GoalStatus
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal


resultPub = rospy.Publisher('step_result', String, queue_size=10)

class BridgeConection():
    def __init__(self):
        rospy.init_node('firebase_listener',
                        log_level=rospy.DEBUG, anonymous=True)
                        
        rospy.Subscriber('step_command', String, self.step_received)
        rospy.spin()


    def step_received(self, msg):
        jsn = json.loads(msg.data)
        rospy.logdebug('decoded received step to %s' % jsn)
    
        stepargs = jsn['args']

        client = SimpleActionClient('move_base', MoveBaseAction)
        client.wait_for_server()
        
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = stepargs['x']
        goal.target_pose.pose.position.y = stepargs['y']
        goal.target_pose.pose.orientation.z = stepargs['z']
        goal.target_pose.pose.orientation.w = stepargs['w']

        #def warning(msg):
        #    rospy.logwarn('status %s' % msg)

        #udateSub = rospy.Subscriber('move_base/status', GoalStatusArray, warning)

        client.send_goal(goal)
        wait = client.wait_for_result()
        if not wait:
            rospy.logerr("Action server not available!")
            result = {
                'success': False,
                'error': 'Action server error'
            }
        else:
            result = client.get_state()
            rospy.logwarn('wait %s, result: %s'%(wait, result))
            success = result == GoalStatus.SUCCEEDED
            result = {
                'success': success,
                'error': None if success else client.get_goal_status_text()
            }

        #udateSub.unregister()
        resultPub.publish(json.dumps(result, ensure_ascii=False))


if __name__ == '__main__':
    BridgeConection()
