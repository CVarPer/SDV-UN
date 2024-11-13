;; Auto-generated. Do not edit!


(when (boundp 'sdv_serial::battery)
  (if (not (find-package "SDV_SERIAL"))
    (make-package "SDV_SERIAL"))
  (shadow 'battery (find-package "SDV_SERIAL")))
(unless (find-package "SDV_SERIAL::BATTERY")
  (make-package "SDV_SERIAL::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude battery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdv_serial::battery
  :super ros::object
  :slots (_header _current_main _voltage_main _current_laser _voltage_laser ))

(defmethod sdv_serial::battery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_main __current_main) 0)
    ((:voltage_main __voltage_main) 0)
    ((:current_laser __current_laser) 0)
    ((:voltage_laser __voltage_laser) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_main (round __current_main))
   (setq _voltage_main (round __voltage_main))
   (setq _current_laser (round __current_laser))
   (setq _voltage_laser (round __voltage_laser))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_main
   (&optional __current_main)
   (if __current_main (setq _current_main __current_main)) _current_main)
  (:voltage_main
   (&optional __voltage_main)
   (if __voltage_main (setq _voltage_main __voltage_main)) _voltage_main)
  (:current_laser
   (&optional __current_laser)
   (if __current_laser (setq _current_laser __current_laser)) _current_laser)
  (:voltage_laser
   (&optional __voltage_laser)
   (if __voltage_laser (setq _voltage_laser __voltage_laser)) _voltage_laser)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _current_main
    4
    ;; uint32 _voltage_main
    4
    ;; uint32 _current_laser
    4
    ;; uint32 _voltage_laser
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _current_main
       (write-long _current_main s)
     ;; uint32 _voltage_main
       (write-long _voltage_main s)
     ;; uint32 _current_laser
       (write-long _current_laser s)
     ;; uint32 _voltage_laser
       (write-long _voltage_laser s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _current_main
     (setq _current_main (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _voltage_main
     (setq _voltage_main (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _current_laser
     (setq _current_laser (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _voltage_laser
     (setq _voltage_laser (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sdv_serial::battery :md5sum-) "fcf3e17e1084d22d987c211f14da987c")
(setf (get sdv_serial::battery :datatype-) "sdv_serial/battery")
(setf (get sdv_serial::battery :definition-)
      "# battery.msg

Header header
uint32 current_main
uint32 voltage_main
uint32 current_laser
uint32 voltage_laser

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



(provide :sdv_serial/battery "fcf3e17e1084d22d987c211f14da987c")


