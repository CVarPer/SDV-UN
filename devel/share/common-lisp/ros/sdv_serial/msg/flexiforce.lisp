; Auto-generated. Do not edit!


(cl:in-package sdv_serial-msg)


;//! \htmlinclude flexiforce.msg.html

(cl:defclass <flexiforce> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_left
    :reader front_left
    :initarg :front_left
    :type cl:integer
    :initform 0)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:integer
    :initform 0)
   (back_left
    :reader back_left
    :initarg :back_left
    :type cl:integer
    :initform 0)
   (back_right
    :reader back_right
    :initarg :back_right
    :type cl:integer
    :initform 0))
)

(cl:defclass flexiforce (<flexiforce>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <flexiforce>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'flexiforce)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdv_serial-msg:<flexiforce> is deprecated: use sdv_serial-msg:flexiforce instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <flexiforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:header-val is deprecated.  Use sdv_serial-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <flexiforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:front_left-val is deprecated.  Use sdv_serial-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <flexiforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:front_right-val is deprecated.  Use sdv_serial-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'back_left-val :lambda-list '(m))
(cl:defmethod back_left-val ((m <flexiforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:back_left-val is deprecated.  Use sdv_serial-msg:back_left instead.")
  (back_left m))

(cl:ensure-generic-function 'back_right-val :lambda-list '(m))
(cl:defmethod back_right-val ((m <flexiforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:back_right-val is deprecated.  Use sdv_serial-msg:back_right instead.")
  (back_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <flexiforce>) ostream)
  "Serializes a message object of type '<flexiforce>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'front_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'front_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'front_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'front_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'back_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'back_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'back_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'back_right)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <flexiforce>) istream)
  "Deserializes a message object of type '<flexiforce>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'front_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'front_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'front_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'front_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'back_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'back_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'back_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'back_right)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<flexiforce>)))
  "Returns string type for a message object of type '<flexiforce>"
  "sdv_serial/flexiforce")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'flexiforce)))
  "Returns string type for a message object of type 'flexiforce"
  "sdv_serial/flexiforce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<flexiforce>)))
  "Returns md5sum for a message object of type '<flexiforce>"
  "f72264109dc46f89ab08fae02832706b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'flexiforce)))
  "Returns md5sum for a message object of type 'flexiforce"
  "f72264109dc46f89ab08fae02832706b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<flexiforce>)))
  "Returns full string definition for message of type '<flexiforce>"
  (cl:format cl:nil "# flexiforce.msg~%~%Header header~%uint32 front_left~%uint32 front_right~%uint32 back_left~%uint32 back_right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'flexiforce)))
  "Returns full string definition for message of type 'flexiforce"
  (cl:format cl:nil "# flexiforce.msg~%~%Header header~%uint32 front_left~%uint32 front_right~%uint32 back_left~%uint32 back_right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <flexiforce>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <flexiforce>))
  "Converts a ROS message object to a list"
  (cl:list 'flexiforce
    (cl:cons ':header (header msg))
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':back_left (back_left msg))
    (cl:cons ':back_right (back_right msg))
))
