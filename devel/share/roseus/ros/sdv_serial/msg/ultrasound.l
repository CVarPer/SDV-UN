;; Auto-generated. Do not edit!


(when (boundp 'sdv_serial::ultrasound)
  (if (not (find-package "SDV_SERIAL"))
    (make-package "SDV_SERIAL"))
  (shadow 'ultrasound (find-package "SDV_SERIAL")))
(unless (find-package "SDV_SERIAL::ULTRASOUND")
  (make-package "SDV_SERIAL::ULTRASOUND"))

(in-package "ROS")
;;//! \htmlinclude ultrasound.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdv_serial::ultrasound
  :super ros::object
  :slots (_header _sensor_1 _sensor_2 _sensor_3 _sensor_4 _sensor_5 _sensor_6 ))

(defmethod sdv_serial::ultrasound
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_1 __sensor_1) 0)
    ((:sensor_2 __sensor_2) 0)
    ((:sensor_3 __sensor_3) 0)
    ((:sensor_4 __sensor_4) 0)
    ((:sensor_5 __sensor_5) 0)
    ((:sensor_6 __sensor_6) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_1 (round __sensor_1))
   (setq _sensor_2 (round __sensor_2))
   (setq _sensor_3 (round __sensor_3))
   (setq _sensor_4 (round __sensor_4))
   (setq _sensor_5 (round __sensor_5))
   (setq _sensor_6 (round __sensor_6))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_1
   (&optional __sensor_1)
   (if __sensor_1 (setq _sensor_1 __sensor_1)) _sensor_1)
  (:sensor_2
   (&optional __sensor_2)
   (if __sensor_2 (setq _sensor_2 __sensor_2)) _sensor_2)
  (:sensor_3
   (&optional __sensor_3)
   (if __sensor_3 (setq _sensor_3 __sensor_3)) _sensor_3)
  (:sensor_4
   (&optional __sensor_4)
   (if __sensor_4 (setq _sensor_4 __sensor_4)) _sensor_4)
  (:sensor_5
   (&optional __sensor_5)
   (if __sensor_5 (setq _sensor_5 __sensor_5)) _sensor_5)
  (:sensor_6
   (&optional __sensor_6)
   (if __sensor_6 (setq _sensor_6 __sensor_6)) _sensor_6)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _sensor_1
    4
    ;; uint32 _sensor_2
    4
    ;; uint32 _sensor_3
    4
    ;; uint32 _sensor_4
    4
    ;; uint32 _sensor_5
    4
    ;; uint32 _sensor_6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _sensor_1
       (write-long _sensor_1 s)
     ;; uint32 _sensor_2
       (write-long _sensor_2 s)
     ;; uint32 _sensor_3
       (write-long _sensor_3 s)
     ;; uint32 _sensor_4
       (write-long _sensor_4 s)
     ;; uint32 _sensor_5
       (write-long _sensor_5 s)
     ;; uint32 _sensor_6
       (write-long _sensor_6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _sensor_1
     (setq _sensor_1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sensor_2
     (setq _sensor_2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sensor_3
     (setq _sensor_3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sensor_4
     (setq _sensor_4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sensor_5
     (setq _sensor_5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sensor_6
     (setq _sensor_6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sdv_serial::ultrasound :md5sum-) "c80239b21235e64744244a0b31a2c700")
(setf (get sdv_serial::ultrasound :datatype-) "sdv_serial/ultrasound")
(setf (get sdv_serial::ultrasound :definition-)
      "# ultrasound.msg

Header header
uint32 sensor_1
uint32 sensor_2
uint32 sensor_3
uint32 sensor_4
uint32 sensor_5
uint32 sensor_6

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



(provide :sdv_serial/ultrasound "c80239b21235e64744244a0b31a2c700")


