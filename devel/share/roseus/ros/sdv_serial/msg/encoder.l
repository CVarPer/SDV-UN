;; Auto-generated. Do not edit!


(when (boundp 'sdv_serial::encoder)
  (if (not (find-package "SDV_SERIAL"))
    (make-package "SDV_SERIAL"))
  (shadow 'encoder (find-package "SDV_SERIAL")))
(unless (find-package "SDV_SERIAL::ENCODER")
  (make-package "SDV_SERIAL::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude encoder.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdv_serial::encoder
  :super ros::object
  :slots (_header _rpm_left _rpm_right _motor_current_left _motor_current_right ))

(defmethod sdv_serial::encoder
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rpm_left __rpm_left) 0)
    ((:rpm_right __rpm_right) 0)
    ((:motor_current_left __motor_current_left) 0)
    ((:motor_current_right __motor_current_right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rpm_left (round __rpm_left))
   (setq _rpm_right (round __rpm_right))
   (setq _motor_current_left (round __motor_current_left))
   (setq _motor_current_right (round __motor_current_right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rpm_left
   (&optional __rpm_left)
   (if __rpm_left (setq _rpm_left __rpm_left)) _rpm_left)
  (:rpm_right
   (&optional __rpm_right)
   (if __rpm_right (setq _rpm_right __rpm_right)) _rpm_right)
  (:motor_current_left
   (&optional __motor_current_left)
   (if __motor_current_left (setq _motor_current_left __motor_current_left)) _motor_current_left)
  (:motor_current_right
   (&optional __motor_current_right)
   (if __motor_current_right (setq _motor_current_right __motor_current_right)) _motor_current_right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _rpm_left
    4
    ;; int32 _rpm_right
    4
    ;; int32 _motor_current_left
    4
    ;; int32 _motor_current_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _rpm_left
       (write-long _rpm_left s)
     ;; int32 _rpm_right
       (write-long _rpm_right s)
     ;; int32 _motor_current_left
       (write-long _motor_current_left s)
     ;; int32 _motor_current_right
       (write-long _motor_current_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _rpm_left
     (setq _rpm_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rpm_right
     (setq _rpm_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor_current_left
     (setq _motor_current_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor_current_right
     (setq _motor_current_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sdv_serial::encoder :md5sum-) "90f42d76d2f804a6ce733d6653f63794")
(setf (get sdv_serial::encoder :datatype-) "sdv_serial/encoder")
(setf (get sdv_serial::encoder :definition-)
      "# encoder.msg

Header header
int32 rpm_left
int32 rpm_right
int32 motor_current_left
int32 motor_current_right

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sdv_serial/encoder "90f42d76d2f804a6ce733d6653f63794")


