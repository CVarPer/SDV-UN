;; Auto-generated. Do not edit!


(when (boundp 'sdv_serial::flexiforce)
  (if (not (find-package "SDV_SERIAL"))
    (make-package "SDV_SERIAL"))
  (shadow 'flexiforce (find-package "SDV_SERIAL")))
(unless (find-package "SDV_SERIAL::FLEXIFORCE")
  (make-package "SDV_SERIAL::FLEXIFORCE"))

(in-package "ROS")
;;//! \htmlinclude flexiforce.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdv_serial::flexiforce
  :super ros::object
  :slots (_header _front_left _front_right _back_left _back_right ))

(defmethod sdv_serial::flexiforce
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_left __front_left) 0)
    ((:front_right __front_right) 0)
    ((:back_left __back_left) 0)
    ((:back_right __back_right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_left (round __front_left))
   (setq _front_right (round __front_right))
   (setq _back_left (round __back_left))
   (setq _back_right (round __back_right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:back_left
   (&optional __back_left)
   (if __back_left (setq _back_left __back_left)) _back_left)
  (:back_right
   (&optional __back_right)
   (if __back_right (setq _back_right __back_right)) _back_right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _front_left
    4
    ;; uint32 _front_right
    4
    ;; uint32 _back_left
    4
    ;; uint32 _back_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _front_left
       (write-long _front_left s)
     ;; uint32 _front_right
       (write-long _front_right s)
     ;; uint32 _back_left
       (write-long _back_left s)
     ;; uint32 _back_right
       (write-long _back_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _front_left
     (setq _front_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _front_right
     (setq _front_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _back_left
     (setq _back_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _back_right
     (setq _back_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sdv_serial::flexiforce :md5sum-) "f72264109dc46f89ab08fae02832706b")
(setf (get sdv_serial::flexiforce :datatype-) "sdv_serial/flexiforce")
(setf (get sdv_serial::flexiforce :definition-)
      "# flexiforce.msg

Header header
uint32 front_left
uint32 front_right
uint32 back_left
uint32 back_right

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



(provide :sdv_serial/flexiforce "f72264109dc46f89ab08fae02832706b")


