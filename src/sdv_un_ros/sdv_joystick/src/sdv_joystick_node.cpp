#include <string>
#include <ros/ros.h>
#include <rosbag/bag.h>
#include <std_msgs/String.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Int32.h>
#include <sensor_msgs/Joy.h>
#include <iostream>
#include <sstream>

bool on_off_joystick = 0;
int enable;
float wL, wR;

void joy_callback(const sensor_msgs::Joy &joy_msg)
{
    float forward, rotation;
    float B = 1.0;
    float r = 1.0;

    if (joy_msg.buttons[0] == 1)
    {
        forward = joy_msg.axes[1];       //Define a % of forward velocity
        rotation = -1 * joy_msg.axes[0]; //Define % of turn
    }
    else
    {
        forward = 0;
        rotation = 0;
    }

    //Calculate the %of PWM for the motors to move with the desired % of velocity and rotation
    //Max PWM = 1
    if (rotation == 0)
    {
        wL = forward;
        wR = wL;
    }
    else
    {
        wL = (2 * forward / r - rotation * B / r) / 2;
        wR = rotation * B / r + wL;
        if (forward == 0)
        {
            wL = wL * 2;
            wR = -wL;
        }
        else
        {
            wL = wL / 1.5;
            wR = wR / 1.5;
        }
    }

    //Deppending on button pressed, define 3 levels of speed:
    //32767, -32768
    double duty = (0.5 * (joy_msg.axes[2] + 1)) * 0.6;
    wL = wL * duty;
    wR = wR * duty;

    if (wL < 0)
    {
        wL = 80 * wL - 10;
    }
    else
    {
        wL = 80 * wL + 10;
    }

    if (wR < 0)
    {
        wR = 80 * wR - 10;
    }
    else
    {
        wR = 80 * wR + 10;
    }

    enable = joy_msg.buttons[0];

    on_off_joystick ^= joy_msg.buttons[1];
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "joystick_agv_node");
    ros::NodeHandle nh;

    ros::Subscriber joy_sub = nh.subscribe("joy", 20, joy_callback);
    ros::Publisher serial_pub = nh.advertise<std_msgs::String>("write_serial", 20);

    ros::Rate loop_rate(25);

    while (ros::ok())
    {
        ros::spinOnce();

        if (on_off_joystick)
        {
            std_msgs::String msg;
            std::stringstream command;
            command << "m " << enable << " " << wR << " " << wL;
            msg.data = command.str();

            ROS_INFO("%s", msg.data.c_str());
            serial_pub.publish(msg);
        }
        loop_rate.sleep();
    }
}
