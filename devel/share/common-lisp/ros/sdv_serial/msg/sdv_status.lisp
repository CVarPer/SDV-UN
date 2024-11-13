; Auto-generated. Do not edit!


(cl:in-package sdv_serial-msg)


;//! \htmlinclude sdv_status.msg.html

(cl:defclass <sdv_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (energized
    :reader energized
    :initarg :energized
    :type cl:boolean
    :initform cl:nil)
   (stand_by
    :reader stand_by
    :initarg :stand_by
    :type cl:boolean
    :initform cl:nil)
   (rotate
    :reader rotate
    :initarg :rotate
    :type cl:boolean
    :initform cl:nil)
   (turn_left
    :reader turn_left
    :initarg :turn_left
    :type cl:boolean
    :initform cl:nil)
   (turn_right
    :reader turn_right
    :initarg :turn_right
    :type cl:boolean
    :initform cl:nil)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil)
   (forward
    :reader forward
    :initarg :forward
    :type cl:boolean
    :initform cl:nil)
   (low_batt
    :reader low_batt
    :initarg :low_batt
    :type cl:boolean
    :initform cl:nil)
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (reset_pc
    :reader reset_pc
    :initarg :reset_pc
    :type cl:boolean
    :initform cl:nil)
   (poweroff_pc
    :reader poweroff_pc
    :initarg :poweroff_pc
    :type cl:boolean
    :initform cl:nil)
   (obstacle_stop
    :reader obstacle_stop
    :initarg :obstacle_stop
    :type cl:boolean
    :initform cl:nil)
   (over_load
    :reader over_load
    :initarg :over_load
    :type cl:boolean
    :initform cl:nil)
   (connection_error
    :reader connection_error
    :initarg :connection_error
    :type cl:boolean
    :initform cl:nil)
   (tag_disconnected
    :reader tag_disconnected
    :initarg :tag_disconnected
    :type cl:boolean
    :initform cl:nil)
   (tag_init
    :reader tag_init
    :initarg :tag_init
    :type cl:boolean
    :initform cl:nil)
   (tag_is_on_platform
    :reader tag_is_on_platform
    :initarg :tag_is_on_platform
    :type cl:boolean
    :initform cl:nil)
   (tag_read_error
    :reader tag_read_error
    :initarg :tag_read_error
    :type cl:boolean
    :initform cl:nil)
   (tag_write_error
    :reader tag_write_error
    :initarg :tag_write_error
    :type cl:boolean
    :initform cl:nil)
   (tag_close
    :reader tag_close
    :initarg :tag_close
    :type cl:boolean
    :initform cl:nil)
   (not_connection_error
    :reader not_connection_error
    :initarg :not_connection_error
    :type cl:boolean
    :initform cl:nil)
   (connection_error_imu
    :reader connection_error_imu
    :initarg :connection_error_imu
    :type cl:boolean
    :initform cl:nil)
   (connection_error_msp
    :reader connection_error_msp
    :initarg :connection_error_msp
    :type cl:boolean
    :initform cl:nil)
   (connection_error_rfid
    :reader connection_error_rfid
    :initarg :connection_error_rfid
    :type cl:boolean
    :initform cl:nil)
   (connection_error_ult
    :reader connection_error_ult
    :initarg :connection_error_ult
    :type cl:boolean
    :initform cl:nil)
   (connection_error_batt
    :reader connection_error_batt
    :initarg :connection_error_batt
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass sdv_status (<sdv_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sdv_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sdv_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdv_serial-msg:<sdv_status> is deprecated: use sdv_serial-msg:sdv_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:header-val is deprecated.  Use sdv_serial-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'energized-val :lambda-list '(m))
(cl:defmethod energized-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:energized-val is deprecated.  Use sdv_serial-msg:energized instead.")
  (energized m))

(cl:ensure-generic-function 'stand_by-val :lambda-list '(m))
(cl:defmethod stand_by-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:stand_by-val is deprecated.  Use sdv_serial-msg:stand_by instead.")
  (stand_by m))

(cl:ensure-generic-function 'rotate-val :lambda-list '(m))
(cl:defmethod rotate-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:rotate-val is deprecated.  Use sdv_serial-msg:rotate instead.")
  (rotate m))

(cl:ensure-generic-function 'turn_left-val :lambda-list '(m))
(cl:defmethod turn_left-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:turn_left-val is deprecated.  Use sdv_serial-msg:turn_left instead.")
  (turn_left m))

(cl:ensure-generic-function 'turn_right-val :lambda-list '(m))
(cl:defmethod turn_right-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:turn_right-val is deprecated.  Use sdv_serial-msg:turn_right instead.")
  (turn_right m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:reverse-val is deprecated.  Use sdv_serial-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:forward-val is deprecated.  Use sdv_serial-msg:forward instead.")
  (forward m))

(cl:ensure-generic-function 'low_batt-val :lambda-list '(m))
(cl:defmethod low_batt-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:low_batt-val is deprecated.  Use sdv_serial-msg:low_batt instead.")
  (low_batt m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:emergency_stop-val is deprecated.  Use sdv_serial-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'reset_pc-val :lambda-list '(m))
(cl:defmethod reset_pc-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:reset_pc-val is deprecated.  Use sdv_serial-msg:reset_pc instead.")
  (reset_pc m))

(cl:ensure-generic-function 'poweroff_pc-val :lambda-list '(m))
(cl:defmethod poweroff_pc-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:poweroff_pc-val is deprecated.  Use sdv_serial-msg:poweroff_pc instead.")
  (poweroff_pc m))

(cl:ensure-generic-function 'obstacle_stop-val :lambda-list '(m))
(cl:defmethod obstacle_stop-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:obstacle_stop-val is deprecated.  Use sdv_serial-msg:obstacle_stop instead.")
  (obstacle_stop m))

(cl:ensure-generic-function 'over_load-val :lambda-list '(m))
(cl:defmethod over_load-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:over_load-val is deprecated.  Use sdv_serial-msg:over_load instead.")
  (over_load m))

(cl:ensure-generic-function 'connection_error-val :lambda-list '(m))
(cl:defmethod connection_error-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:connection_error-val is deprecated.  Use sdv_serial-msg:connection_error instead.")
  (connection_error m))

(cl:ensure-generic-function 'tag_disconnected-val :lambda-list '(m))
(cl:defmethod tag_disconnected-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:tag_disconnected-val is deprecated.  Use sdv_serial-msg:tag_disconnected instead.")
  (tag_disconnected m))

(cl:ensure-generic-function 'tag_init-val :lambda-list '(m))
(cl:defmethod tag_init-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:tag_init-val is deprecated.  Use sdv_serial-msg:tag_init instead.")
  (tag_init m))

(cl:ensure-generic-function 'tag_is_on_platform-val :lambda-list '(m))
(cl:defmethod tag_is_on_platform-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:tag_is_on_platform-val is deprecated.  Use sdv_serial-msg:tag_is_on_platform instead.")
  (tag_is_on_platform m))

(cl:ensure-generic-function 'tag_read_error-val :lambda-list '(m))
(cl:defmethod tag_read_error-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:tag_read_error-val is deprecated.  Use sdv_serial-msg:tag_read_error instead.")
  (tag_read_error m))

(cl:ensure-generic-function 'tag_write_error-val :lambda-list '(m))
(cl:defmethod tag_write_error-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:tag_write_error-val is deprecated.  Use sdv_serial-msg:tag_write_error instead.")
  (tag_write_error m))

(cl:ensure-generic-function 'tag_close-val :lambda-list '(m))
(cl:defmethod tag_close-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:tag_close-val is deprecated.  Use sdv_serial-msg:tag_close instead.")
  (tag_close m))

(cl:ensure-generic-function 'not_connection_error-val :lambda-list '(m))
(cl:defmethod not_connection_error-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:not_connection_error-val is deprecated.  Use sdv_serial-msg:not_connection_error instead.")
  (not_connection_error m))

(cl:ensure-generic-function 'connection_error_imu-val :lambda-list '(m))
(cl:defmethod connection_error_imu-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:connection_error_imu-val is deprecated.  Use sdv_serial-msg:connection_error_imu instead.")
  (connection_error_imu m))

(cl:ensure-generic-function 'connection_error_msp-val :lambda-list '(m))
(cl:defmethod connection_error_msp-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:connection_error_msp-val is deprecated.  Use sdv_serial-msg:connection_error_msp instead.")
  (connection_error_msp m))

(cl:ensure-generic-function 'connection_error_rfid-val :lambda-list '(m))
(cl:defmethod connection_error_rfid-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:connection_error_rfid-val is deprecated.  Use sdv_serial-msg:connection_error_rfid instead.")
  (connection_error_rfid m))

(cl:ensure-generic-function 'connection_error_ult-val :lambda-list '(m))
(cl:defmethod connection_error_ult-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:connection_error_ult-val is deprecated.  Use sdv_serial-msg:connection_error_ult instead.")
  (connection_error_ult m))

(cl:ensure-generic-function 'connection_error_batt-val :lambda-list '(m))
(cl:defmethod connection_error_batt-val ((m <sdv_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:connection_error_batt-val is deprecated.  Use sdv_serial-msg:connection_error_batt instead.")
  (connection_error_batt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sdv_status>) ostream)
  "Serializes a message object of type '<sdv_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'energized) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stand_by) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotate) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turn_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turn_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'low_batt) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_pc) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'poweroff_pc) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'over_load) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tag_disconnected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tag_init) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tag_is_on_platform) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tag_read_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tag_write_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tag_close) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'not_connection_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_error_imu) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_error_msp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_error_rfid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_error_ult) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_error_batt) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sdv_status>) istream)
  "Deserializes a message object of type '<sdv_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'energized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stand_by) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rotate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'turn_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'turn_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'low_batt) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_pc) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'poweroff_pc) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'obstacle_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'over_load) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'connection_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tag_disconnected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tag_init) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tag_is_on_platform) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tag_read_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tag_write_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tag_close) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'not_connection_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'connection_error_imu) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'connection_error_msp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'connection_error_rfid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'connection_error_ult) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'connection_error_batt) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sdv_status>)))
  "Returns string type for a message object of type '<sdv_status>"
  "sdv_serial/sdv_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sdv_status)))
  "Returns string type for a message object of type 'sdv_status"
  "sdv_serial/sdv_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sdv_status>)))
  "Returns md5sum for a message object of type '<sdv_status>"
  "c5e0403860ad18cd570582530bdd6690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sdv_status)))
  "Returns md5sum for a message object of type 'sdv_status"
  "c5e0403860ad18cd570582530bdd6690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sdv_status>)))
  "Returns full string definition for message of type '<sdv_status>"
  (cl:format cl:nil "# sdv_status.msg~%~%Header header~%bool energized~%bool stand_by~%bool rotate~%bool turn_left~%bool turn_right~%bool reverse~%bool forward~%bool low_batt~%bool emergency_stop~%bool reset_pc~%bool poweroff_pc~%bool obstacle_stop~%bool over_load~%bool connection_error~%bool tag_disconnected~%bool tag_init~%bool tag_is_on_platform~%bool tag_read_error~%bool tag_write_error~%bool tag_close~%bool not_connection_error~%bool connection_error_imu~%bool connection_error_msp~%bool connection_error_rfid~%bool connection_error_ult~%bool connection_error_batt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sdv_status)))
  "Returns full string definition for message of type 'sdv_status"
  (cl:format cl:nil "# sdv_status.msg~%~%Header header~%bool energized~%bool stand_by~%bool rotate~%bool turn_left~%bool turn_right~%bool reverse~%bool forward~%bool low_batt~%bool emergency_stop~%bool reset_pc~%bool poweroff_pc~%bool obstacle_stop~%bool over_load~%bool connection_error~%bool tag_disconnected~%bool tag_init~%bool tag_is_on_platform~%bool tag_read_error~%bool tag_write_error~%bool tag_close~%bool not_connection_error~%bool connection_error_imu~%bool connection_error_msp~%bool connection_error_rfid~%bool connection_error_ult~%bool connection_error_batt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sdv_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sdv_status>))
  "Converts a ROS message object to a list"
  (cl:list 'sdv_status
    (cl:cons ':header (header msg))
    (cl:cons ':energized (energized msg))
    (cl:cons ':stand_by (stand_by msg))
    (cl:cons ':rotate (rotate msg))
    (cl:cons ':turn_left (turn_left msg))
    (cl:cons ':turn_right (turn_right msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':forward (forward msg))
    (cl:cons ':low_batt (low_batt msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':reset_pc (reset_pc msg))
    (cl:cons ':poweroff_pc (poweroff_pc msg))
    (cl:cons ':obstacle_stop (obstacle_stop msg))
    (cl:cons ':over_load (over_load msg))
    (cl:cons ':connection_error (connection_error msg))
    (cl:cons ':tag_disconnected (tag_disconnected msg))
    (cl:cons ':tag_init (tag_init msg))
    (cl:cons ':tag_is_on_platform (tag_is_on_platform msg))
    (cl:cons ':tag_read_error (tag_read_error msg))
    (cl:cons ':tag_write_error (tag_write_error msg))
    (cl:cons ':tag_close (tag_close msg))
    (cl:cons ':not_connection_error (not_connection_error msg))
    (cl:cons ':connection_error_imu (connection_error_imu msg))
    (cl:cons ':connection_error_msp (connection_error_msp msg))
    (cl:cons ':connection_error_rfid (connection_error_rfid msg))
    (cl:cons ':connection_error_ult (connection_error_ult msg))
    (cl:cons ':connection_error_batt (connection_error_batt msg))
))
