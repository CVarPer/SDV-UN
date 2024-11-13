;; Auto-generated. Do not edit!


(when (boundp 'sdv_serial::motors)
  (if (not (find-package "SDV_SERIAL"))
    (make-package "SDV_SERIAL"))
  (shadow 'motors (find-package "SDV_SERIAL")))
(unless (find-package "SDV_SERIAL::MOTORS")
  (make-package "SDV_SERIAL::MOTORS"))

(in-package "ROS")
;;//! \htmlinclude motors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdv_serial::motors
  :super ros::object
  :slots (_header _left_percent _right_percent ))

(defmethod sdv_serial::motors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_percent __left_percent) 0.0)
    ((:right_percent __right_percent) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_percent (float __left_percent))
   (setq _right_percent (float __right_percent))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_percent
   (&optional __left_percent)
   (if __left_percent (setq _left_percent __left_percent)) _left_percent)
  (:right_percent
   (&optional __right_percent)
   (if __right_percent (setq _right_percent __right_percent)) _right_percent)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _left_percent
    8
    ;; float64 _right_percent
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _left_percent
       (sys::poke _left_percent (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_percent
       (sys::poke _right_percent (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _left_percent
     (setq _left_percent (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_percent
     (setq _right_percent (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sdv_serial::motors :md5sum-) "e58c5a22817d4395c3b395712a961a60")
(setf (get sdv_serial::motors :datatype-) "sdv_serial/motors")
(setf (get sdv_serial::motors :definition-)
      "# motors.msg

Header header
float64 left_percent
float64 right_percent

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



(provide :sdv_serial/motors "e58c5a22817d4395c3b395712a961a60")


