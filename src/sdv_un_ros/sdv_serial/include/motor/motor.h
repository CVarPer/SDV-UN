
#ifndef MOTOR_
#define MOTOR_

namespace motor
{
    class Motor
    {
    
    public:
        Motor();
        Motor(double r, bool right_motor);
        double get_rad_s(double x, double z);
        double get_pwm_percent(double x, double z);
        double get_wheel_radius();
        void set_wheel_separation(double sep);
        void set_right_motor(bool is_right_motor);
    private:
        double wheel_radius = 0.1;
        double wheel_separation = 0.44010;
        double wheel_axis_separation = 0.1;
        bool is_right_motor = true;
        double motor_position();
        double const N = 3.2 * 4.0;
        double last_speed_time_stamp = 0;
    };
}; // namespace motor

#endif