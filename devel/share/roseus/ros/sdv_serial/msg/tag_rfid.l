;; Auto-generated. Do not edit!


(when (boundp 'sdv_serial::tag_rfid)
  (if (not (find-package "SDV_SERIAL"))
    (make-package "SDV_SERIAL"))
  (shadow 'tag_rfid (find-package "SDV_SERIAL")))
(unless (find-package "SDV_SERIAL::TAG_RFID")
  (make-package "SDV_SERIAL::TAG_RFID"))

(in-package "ROS")
;;//! \htmlinclude tag_rfid.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdv_serial::tag_rfid
  :super ros::object
  :slots (_header _process _product _start_point _end_point ))

(defmethod sdv_serial::tag_rfid
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:process __process) "")
    ((:product __product) "")
    ((:start_point __start_point) "")
    ((:end_point __end_point) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _process (string __process))
   (setq _product (string __product))
   (setq _start_point (string __start_point))
   (setq _end_point (string __end_point))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:process
   (&optional __process)
   (if __process (setq _process __process)) _process)
  (:product
   (&optional __product)
   (if __product (setq _product __product)) _product)
  (:start_point
   (&optional __start_point)
   (if __start_point (setq _start_point __start_point)) _start_point)
  (:end_point
   (&optional __end_point)
   (if __end_point (setq _end_point __end_point)) _end_point)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _process
    4 (length _process)
    ;; string _product
    4 (length _product)
    ;; string _start_point
    4 (length _start_point)
    ;; string _end_point
    4 (length _end_point)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _process
       (write-long (length _process) s) (princ _process s)
     ;; string _product
       (write-long (length _product) s) (princ _product s)
     ;; string _start_point
       (write-long (length _start_point) s) (princ _start_point s)
     ;; string _end_point
       (write-long (length _end_point) s) (princ _end_point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _process
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _product
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _product (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _start_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sdv_serial::tag_rfid :md5sum-) "c3f9c1da1f4087a6c5d53653731980dc")
(setf (get sdv_serial::tag_rfid :datatype-) "sdv_serial/tag_rfid")
(setf (get sdv_serial::tag_rfid :definition-)
      "# tag_rfid.msg

Header header
string process
string product
string start_point
string end_point

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



(provide :sdv_serial/tag_rfid "c3f9c1da1f4087a6c5d53653731980dc")


