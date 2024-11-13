#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
This aplication shows a set of locations of LabFabEx in UNAL, where the SDVUN 
mobile robots can move. You can select one of them introducing a number in the 
screen. This aplication uses a node that subscribes to /move_base_simple/goal 
topic, sending PoseStamped messages.
'''
import rospy
from geometry_msgs.msg import PoseStamped


'''
Sender: This class stores multiple locations from LabFabEx and can publish 
everyone using an especific method over '/move_base_simple/goal' topic.
'''
class Sender():
    def __init__(self):
        self.pose = PoseStamped()
        self.pose.header.stamp = rospy.Time.now()
        self.pose.header.frame_id = "map"
        self.pose.pose.position.x = 0
        self.pose.pose.position.y = 0
        self.pose.pose.position.z = 0
        self.pose.pose.orientation.x = 0
        self.pose.pose.orientation.y = 0
        self.pose.pose.orientation.z = 0
        self.pose.pose.orientation.w = 1
        self.pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, 
                                   queue_size=100)

    def sendSDVtoExperimentalCell(self):
        self.pose.pose.position.x = 0.8
        self.pose.pose.position.y = 5.8
        self.pose.pose.orientation.z = 0.0
        self.pose.pose.orientation.w = 0.1

    def sendSDVtoManufacturingCell(self):
        self.pose.pose.position.x = 0.801138877869
        self.pose.pose.position.y = -4.6122341156
        self.pose.pose.orientation.z = 0.700009406104
        self.pose.pose.orientation.w = 0.714133622907

    def sendSDVtoIndustrialCell(self):
        self.pose.pose.position.x = 6.76584243774
        self.pose.pose.position.y = 3.13956570625
        self.pose.pose.orientation.z = 1.0
        self.pose.pose.orientation.w = 0.0

    def sendSDVtoMotomanUnloadingPlace(self):
        self.pose.pose.position.x = 6.76584243774
        self.pose.pose.position.y = 3.13956570625
        self.pose.pose.orientation.z = 1.0
        self.pose.pose.orientation.w = 0.0

    def sendSDVtoHome(self):
        self.pose.pose.position.x = 0
        self.pose.pose.position.y = 0
        self.pose.pose.orientation.z = 0.0
        self.pose.pose.orientation.w = 1.0

    def sendSDVtoC1(self):
        self.pose.pose.position.x = 0.7067
        self.pose.pose.position.y = -2.9218
        self.pose.pose.orientation.z = 0.69
        self.pose.pose.orientation.w = 0.715

    def publishPoseStamped(self):
        self.pose.header.stamp = rospy.Time().now()
        self.pub.publish(self.pose)
# End of Sender Class


def print_menu():
    print("Select an option\n" +
      "  1) Send to Experimental Cell\n" +
      "  2) Send to Manufacturing Cell\n" +
      "  3) Send to Industrial Cell\n" +
      "  4) Send to Motoman unloading place\n" +
      "  5) Send to Home\n" +
      "  6) Send to Prototyping Cell\n" +
      "  7) Print menu again\n" +
      "  8) Exit")

def main():

    # Configuring the node
    rospy.init_node('sdv_send2location', anonymous=True)
    sender = Sender()
    #rate = rospy.Rate(10) # 10hz
    n_options = 8

    print_menu()

    # Menu loop
    ready = False
    exit = False
    while not rospy.is_shutdown() and (not exit):
        while not ready:
            # Reading input
            try:
                option = str(input())
            except ValueError:
                print("Must enter digits!")
                option = str(n_options + 1)
            except NameError:
                print("Must enter digits!")
                option = str(n_options + 1)
            except SyntaxError:
                option = str(n_options + 1)
            
            # Procesing input
            ready = True
            if option == '1':
                sender.sendSDVtoExperimentalCell()
            elif option == '2':
                sender.sendSDVtoManufacturingCell()
            elif option == '3':
                sender.sendSDVtoIndustrialCell()
            elif option == '4':
                sender.sendSDVtoMotomanUnloadingPlace()
            elif option == '5':
                sender.sendSDVtoHome()
            elif option == '6':
                print()
                print("Not implemented... Try other")
            elif option == '7':
                print_menu()
            elif option == str(n_options):
                ready = False
                exit = True
                print("Exiting")
                return
            else:
                ready = False
                print("Wrong command. Insert a value between 1 and {}".format(n_options))
        
        # Publishing message
        if not rospy.is_shutdown() and ready:
            sender.publishPoseStamped()
            print("Location sended")
            ready = False

# Main
if __name__ == '__main__':
    main()
