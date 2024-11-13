;; Auto-generated. Do not edit!


(when (boundp 'sdv_serial::sdv_status)
  (if (not (find-package "SDV_SERIAL"))
    (make-package "SDV_SERIAL"))
  (shadow 'sdv_status (find-package "SDV_SERIAL")))
(unless (find-package "SDV_SERIAL::SDV_STATUS")
  (make-package "SDV_SERIAL::SDV_STATUS"))

(in-package "ROS")
;;//! \htmlinclude sdv_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdv_serial::sdv_status
  :super ros::object
  :slots (_header _energized _stand_by _rotate _turn_left _turn_right _reverse _forward _low_batt _emergency_stop _reset_pc _poweroff_pc _obstacle_stop _over_load _connection_error _tag_disconnected _tag_init _tag_is_on_platform _tag_read_error _tag_write_error _tag_close _not_connection_error _connection_error_imu _connection_error_msp _connection_error_rfid _connection_error_ult _connection_error_batt ))

(defmethod sdv_serial::sdv_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:energized __energized) nil)
    ((:stand_by __stand_by) nil)
    ((:rotate __rotate) nil)
    ((:turn_left __turn_left) nil)
    ((:turn_right __turn_right) nil)
    ((:reverse __reverse) nil)
    ((:forward __forward) nil)
    ((:low_batt __low_batt) nil)
    ((:emergency_stop __emergency_stop) nil)
    ((:reset_pc __reset_pc) nil)
    ((:poweroff_pc __poweroff_pc) nil)
    ((:obstacle_stop __obstacle_stop) nil)
    ((:over_load __over_load) nil)
    ((:connection_error __connection_error) nil)
    ((:tag_disconnected __tag_disconnected) nil)
    ((:tag_init __tag_init) nil)
    ((:tag_is_on_platform __tag_is_on_platform) nil)
    ((:tag_read_error __tag_read_error) nil)
    ((:tag_write_error __tag_write_error) nil)
    ((:tag_close __tag_close) nil)
    ((:not_connection_error __not_connection_error) nil)
    ((:connection_error_imu __connection_error_imu) nil)
    ((:connection_error_msp __connection_error_msp) nil)
    ((:connection_error_rfid __connection_error_rfid) nil)
    ((:connection_error_ult __connection_error_ult) nil)
    ((:connection_error_batt __connection_error_batt) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _energized __energized)
   (setq _stand_by __stand_by)
   (setq _rotate __rotate)
   (setq _turn_left __turn_left)
   (setq _turn_right __turn_right)
   (setq _reverse __reverse)
   (setq _forward __forward)
   (setq _low_batt __low_batt)
   (setq _emergency_stop __emergency_stop)
   (setq _reset_pc __reset_pc)
   (setq _poweroff_pc __poweroff_pc)
   (setq _obstacle_stop __obstacle_stop)
   (setq _over_load __over_load)
   (setq _connection_error __connection_error)
   (setq _tag_disconnected __tag_disconnected)
   (setq _tag_init __tag_init)
   (setq _tag_is_on_platform __tag_is_on_platform)
   (setq _tag_read_error __tag_read_error)
   (setq _tag_write_error __tag_write_error)
   (setq _tag_close __tag_close)
   (setq _not_connection_error __not_connection_error)
   (setq _connection_error_imu __connection_error_imu)
   (setq _connection_error_msp __connection_error_msp)
   (setq _connection_error_rfid __connection_error_rfid)
   (setq _connection_error_ult __connection_error_ult)
   (setq _connection_error_batt __connection_error_batt)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:energized
   (&optional __energized)
   (if __energized (setq _energized __energized)) _energized)
  (:stand_by
   (&optional __stand_by)
   (if __stand_by (setq _stand_by __stand_by)) _stand_by)
  (:rotate
   (&optional __rotate)
   (if __rotate (setq _rotate __rotate)) _rotate)
  (:turn_left
   (&optional __turn_left)
   (if __turn_left (setq _turn_left __turn_left)) _turn_left)
  (:turn_right
   (&optional __turn_right)
   (if __turn_right (setq _turn_right __turn_right)) _turn_right)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:forward
   (&optional __forward)
   (if __forward (setq _forward __forward)) _forward)
  (:low_batt
   (&optional __low_batt)
   (if __low_batt (setq _low_batt __low_batt)) _low_batt)
  (:emergency_stop
   (&optional __emergency_stop)
   (if __emergency_stop (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:reset_pc
   (&optional __reset_pc)
   (if __reset_pc (setq _reset_pc __reset_pc)) _reset_pc)
  (:poweroff_pc
   (&optional __poweroff_pc)
   (if __poweroff_pc (setq _poweroff_pc __poweroff_pc)) _poweroff_pc)
  (:obstacle_stop
   (&optional __obstacle_stop)
   (if __obstacle_stop (setq _obstacle_stop __obstacle_stop)) _obstacle_stop)
  (:over_load
   (&optional __over_load)
   (if __over_load (setq _over_load __over_load)) _over_load)
  (:connection_error
   (&optional __connection_error)
   (if __connection_error (setq _connection_error __connection_error)) _connection_error)
  (:tag_disconnected
   (&optional __tag_disconnected)
   (if __tag_disconnected (setq _tag_disconnected __tag_disconnected)) _tag_disconnected)
  (:tag_init
   (&optional __tag_init)
   (if __tag_init (setq _tag_init __tag_init)) _tag_init)
  (:tag_is_on_platform
   (&optional __tag_is_on_platform)
   (if __tag_is_on_platform (setq _tag_is_on_platform __tag_is_on_platform)) _tag_is_on_platform)
  (:tag_read_error
   (&optional __tag_read_error)
   (if __tag_read_error (setq _tag_read_error __tag_read_error)) _tag_read_error)
  (:tag_write_error
   (&optional __tag_write_error)
   (if __tag_write_error (setq _tag_write_error __tag_write_error)) _tag_write_error)
  (:tag_close
   (&optional __tag_close)
   (if __tag_close (setq _tag_close __tag_close)) _tag_close)
  (:not_connection_error
   (&optional __not_connection_error)
   (if __not_connection_error (setq _not_connection_error __not_connection_error)) _not_connection_error)
  (:connection_error_imu
   (&optional __connection_error_imu)
   (if __connection_error_imu (setq _connection_error_imu __connection_error_imu)) _connection_error_imu)
  (:connection_error_msp
   (&optional __connection_error_msp)
   (if __connection_error_msp (setq _connection_error_msp __connection_error_msp)) _connection_error_msp)
  (:connection_error_rfid
   (&optional __connection_error_rfid)
   (if __connection_error_rfid (setq _connection_error_rfid __connection_error_rfid)) _connection_error_rfid)
  (:connection_error_ult
   (&optional __connection_error_ult)
   (if __connection_error_ult (setq _connection_error_ult __connection_error_ult)) _connection_error_ult)
  (:connection_error_batt
   (&optional __connection_error_batt)
   (if __connection_error_batt (setq _connection_error_batt __connection_error_batt)) _connection_error_batt)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _energized
    1
    ;; bool _stand_by
    1
    ;; bool _rotate
    1
    ;; bool _turn_left
    1
    ;; bool _turn_right
    1
    ;; bool _reverse
    1
    ;; bool _forward
    1
    ;; bool _low_batt
    1
    ;; bool _emergency_stop
    1
    ;; bool _reset_pc
    1
    ;; bool _poweroff_pc
    1
    ;; bool _obstacle_stop
    1
    ;; bool _over_load
    1
    ;; bool _connection_error
    1
    ;; bool _tag_disconnected
    1
    ;; bool _tag_init
    1
    ;; bool _tag_is_on_platform
    1
    ;; bool _tag_read_error
    1
    ;; bool _tag_write_error
    1
    ;; bool _tag_close
    1
    ;; bool _not_connection_error
    1
    ;; bool _connection_error_imu
    1
    ;; bool _connection_error_msp
    1
    ;; bool _connection_error_rfid
    1
    ;; bool _connection_error_ult
    1
    ;; bool _connection_error_batt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _energized
       (if _energized (write-byte -1 s) (write-byte 0 s))
     ;; bool _stand_by
       (if _stand_by (write-byte -1 s) (write-byte 0 s))
     ;; bool _rotate
       (if _rotate (write-byte -1 s) (write-byte 0 s))
     ;; bool _turn_left
       (if _turn_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _turn_right
       (if _turn_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;; bool _forward
       (if _forward (write-byte -1 s) (write-byte 0 s))
     ;; bool _low_batt
       (if _low_batt (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_pc
       (if _reset_pc (write-byte -1 s) (write-byte 0 s))
     ;; bool _poweroff_pc
       (if _poweroff_pc (write-byte -1 s) (write-byte 0 s))
     ;; bool _obstacle_stop
       (if _obstacle_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _over_load
       (if _over_load (write-byte -1 s) (write-byte 0 s))
     ;; bool _connection_error
       (if _connection_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _tag_disconnected
       (if _tag_disconnected (write-byte -1 s) (write-byte 0 s))
     ;; bool _tag_init
       (if _tag_init (write-byte -1 s) (write-byte 0 s))
     ;; bool _tag_is_on_platform
       (if _tag_is_on_platform (write-byte -1 s) (write-byte 0 s))
     ;; bool _tag_read_error
       (if _tag_read_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _tag_write_error
       (if _tag_write_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _tag_close
       (if _tag_close (write-byte -1 s) (write-byte 0 s))
     ;; bool _not_connection_error
       (if _not_connection_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _connection_error_imu
       (if _connection_error_imu (write-byte -1 s) (write-byte 0 s))
     ;; bool _connection_error_msp
       (if _connection_error_msp (write-byte -1 s) (write-byte 0 s))
     ;; bool _connection_error_rfid
       (if _connection_error_rfid (write-byte -1 s) (write-byte 0 s))
     ;; bool _connection_error_ult
       (if _connection_error_ult (write-byte -1 s) (write-byte 0 s))
     ;; bool _connection_error_batt
       (if _connection_error_batt (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _energized
     (setq _energized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stand_by
     (setq _stand_by (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rotate
     (setq _rotate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _turn_left
     (setq _turn_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _turn_right
     (setq _turn_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _forward
     (setq _forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _low_batt
     (setq _low_batt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_pc
     (setq _reset_pc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _poweroff_pc
     (setq _poweroff_pc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _obstacle_stop
     (setq _obstacle_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _over_load
     (setq _over_load (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _connection_error
     (setq _connection_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tag_disconnected
     (setq _tag_disconnected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tag_init
     (setq _tag_init (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tag_is_on_platform
     (setq _tag_is_on_platform (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tag_read_error
     (setq _tag_read_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tag_write_error
     (setq _tag_write_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tag_close
     (setq _tag_close (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _not_connection_error
     (setq _not_connection_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _connection_error_imu
     (setq _connection_error_imu (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _connection_error_msp
     (setq _connection_error_msp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _connection_error_rfid
     (setq _connection_error_rfid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _connection_error_ult
     (setq _connection_error_ult (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _connection_error_batt
     (setq _connection_error_batt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sdv_serial::sdv_status :md5sum-) "c5e0403860ad18cd570582530bdd6690")
(setf (get sdv_serial::sdv_status :datatype-) "sdv_serial/sdv_status")
(setf (get sdv_serial::sdv_status :definition-)
      "# sdv_status.msg

Header header
bool energized
bool stand_by
bool rotate
bool turn_left
bool turn_right
bool reverse
bool forward
bool low_batt
bool emergency_stop
bool reset_pc
bool poweroff_pc
bool obstacle_stop
bool over_load
bool connection_error
bool tag_disconnected
bool tag_init
bool tag_is_on_platform
bool tag_read_error
bool tag_write_error
bool tag_close
bool not_connection_error
bool connection_error_imu
bool connection_error_msp
bool connection_error_rfid
bool connection_error_ult
bool connection_error_batt

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



(provide :sdv_serial/sdv_status "c5e0403860ad18cd570582530bdd6690")


