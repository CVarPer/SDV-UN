#include <math.h>
#include <iostream>
#include <ros/ros.h>
#include <motor/motor.h>

using namespace std;

namespace motor
{
    Motor::Motor(double r, bool right_motor)
    {
        wheel_radius = r;
        set_right_motor(right_motor);
    }

    Motor::Motor() 
    {
        wheel_radius = 0.075;
        set_right_motor(true);
    }

    double Motor::get_rad_s(double x, double z)
    {
        double vx = x * 0.9;
        double om = z * 1.8;
        double r = wheel_radius;
        double B = wheel_separation;
        double w_rad_s = (vx / r) + (motor_position()*((om * B) / (2.0 * r)));
        return w_rad_s;
    }

    double Motor::get_pwm_percent(double x, double z)
    {
        double w_rad_s = get_rad_s(x, z);
        if (w_rad_s >= 0.0)
            w_rad_s = 80.0 * w_rad_s / N + 10.0;
        else
            w_rad_s = 80.0 * w_rad_s / N - 10.0;
        
        last_speed_time_stamp = ros::Time::now().toSec();
        return w_rad_s;
    }

    double Motor::get_wheel_radius()
    {
        return 0;
    }

    void Motor::set_wheel_separation(double sep)
    {
        wheel_separation = sep;
    }

    double Motor::motor_position()
    {
        if(is_right_motor)
            return 1.0;
        else
            return -1.0;
    }

    void Motor::set_right_motor(bool right_motor)
    {
        is_right_motor = right_motor;
    }
}; // namespace motor