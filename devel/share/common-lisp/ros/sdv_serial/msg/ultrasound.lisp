; Auto-generated. Do not edit!


(cl:in-package sdv_serial-msg)


;//! \htmlinclude ultrasound.msg.html

(cl:defclass <ultrasound> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor_1
    :reader sensor_1
    :initarg :sensor_1
    :type cl:integer
    :initform 0)
   (sensor_2
    :reader sensor_2
    :initarg :sensor_2
    :type cl:integer
    :initform 0)
   (sensor_3
    :reader sensor_3
    :initarg :sensor_3
    :type cl:integer
    :initform 0)
   (sensor_4
    :reader sensor_4
    :initarg :sensor_4
    :type cl:integer
    :initform 0)
   (sensor_5
    :reader sensor_5
    :initarg :sensor_5
    :type cl:integer
    :initform 0)
   (sensor_6
    :reader sensor_6
    :initarg :sensor_6
    :type cl:integer
    :initform 0))
)

(cl:defclass ultrasound (<ultrasound>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasound>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasound)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdv_serial-msg:<ultrasound> is deprecated: use sdv_serial-msg:ultrasound instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:header-val is deprecated.  Use sdv_serial-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_1-val :lambda-list '(m))
(cl:defmethod sensor_1-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:sensor_1-val is deprecated.  Use sdv_serial-msg:sensor_1 instead.")
  (sensor_1 m))

(cl:ensure-generic-function 'sensor_2-val :lambda-list '(m))
(cl:defmethod sensor_2-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:sensor_2-val is deprecated.  Use sdv_serial-msg:sensor_2 instead.")
  (sensor_2 m))

(cl:ensure-generic-function 'sensor_3-val :lambda-list '(m))
(cl:defmethod sensor_3-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:sensor_3-val is deprecated.  Use sdv_serial-msg:sensor_3 instead.")
  (sensor_3 m))

(cl:ensure-generic-function 'sensor_4-val :lambda-list '(m))
(cl:defmethod sensor_4-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:sensor_4-val is deprecated.  Use sdv_serial-msg:sensor_4 instead.")
  (sensor_4 m))

(cl:ensure-generic-function 'sensor_5-val :lambda-list '(m))
(cl:defmethod sensor_5-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:sensor_5-val is deprecated.  Use sdv_serial-msg:sensor_5 instead.")
  (sensor_5 m))

(cl:ensure-generic-function 'sensor_6-val :lambda-list '(m))
(cl:defmethod sensor_6-val ((m <ultrasound>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:sensor_6-val is deprecated.  Use sdv_serial-msg:sensor_6 instead.")
  (sensor_6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasound>) ostream)
  "Serializes a message object of type '<ultrasound>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_6)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasound>) istream)
  "Deserializes a message object of type '<ultrasound>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_6)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasound>)))
  "Returns string type for a message object of type '<ultrasound>"
  "sdv_serial/ultrasound")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasound)))
  "Returns string type for a message object of type 'ultrasound"
  "sdv_serial/ultrasound")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasound>)))
  "Returns md5sum for a message object of type '<ultrasound>"
  "c80239b21235e64744244a0b31a2c700")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasound)))
  "Returns md5sum for a message object of type 'ultrasound"
  "c80239b21235e64744244a0b31a2c700")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasound>)))
  "Returns full string definition for message of type '<ultrasound>"
  (cl:format cl:nil "# ultrasound.msg~%~%Header header~%uint32 sensor_1~%uint32 sensor_2~%uint32 sensor_3~%uint32 sensor_4~%uint32 sensor_5~%uint32 sensor_6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasound)))
  "Returns full string definition for message of type 'ultrasound"
  (cl:format cl:nil "# ultrasound.msg~%~%Header header~%uint32 sensor_1~%uint32 sensor_2~%uint32 sensor_3~%uint32 sensor_4~%uint32 sensor_5~%uint32 sensor_6~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasound>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasound>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasound
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_1 (sensor_1 msg))
    (cl:cons ':sensor_2 (sensor_2 msg))
    (cl:cons ':sensor_3 (sensor_3 msg))
    (cl:cons ':sensor_4 (sensor_4 msg))
    (cl:cons ':sensor_5 (sensor_5 msg))
    (cl:cons ':sensor_6 (sensor_6 msg))
))
