; Auto-generated. Do not edit!


(cl:in-package sdv_serial-msg)


;//! \htmlinclude tag_rfid.msg.html

(cl:defclass <tag_rfid> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (process
    :reader process
    :initarg :process
    :type cl:string
    :initform "")
   (product
    :reader product
    :initarg :product
    :type cl:string
    :initform "")
   (start_point
    :reader start_point
    :initarg :start_point
    :type cl:string
    :initform "")
   (end_point
    :reader end_point
    :initarg :end_point
    :type cl:string
    :initform ""))
)

(cl:defclass tag_rfid (<tag_rfid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tag_rfid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tag_rfid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdv_serial-msg:<tag_rfid> is deprecated: use sdv_serial-msg:tag_rfid instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <tag_rfid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:header-val is deprecated.  Use sdv_serial-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'process-val :lambda-list '(m))
(cl:defmethod process-val ((m <tag_rfid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:process-val is deprecated.  Use sdv_serial-msg:process instead.")
  (process m))

(cl:ensure-generic-function 'product-val :lambda-list '(m))
(cl:defmethod product-val ((m <tag_rfid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:product-val is deprecated.  Use sdv_serial-msg:product instead.")
  (product m))

(cl:ensure-generic-function 'start_point-val :lambda-list '(m))
(cl:defmethod start_point-val ((m <tag_rfid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:start_point-val is deprecated.  Use sdv_serial-msg:start_point instead.")
  (start_point m))

(cl:ensure-generic-function 'end_point-val :lambda-list '(m))
(cl:defmethod end_point-val ((m <tag_rfid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:end_point-val is deprecated.  Use sdv_serial-msg:end_point instead.")
  (end_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tag_rfid>) ostream)
  "Serializes a message object of type '<tag_rfid>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'process))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'process))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'product))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'product))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_point))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tag_rfid>) istream)
  "Deserializes a message object of type '<tag_rfid>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'process) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'process) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'product) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'product) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tag_rfid>)))
  "Returns string type for a message object of type '<tag_rfid>"
  "sdv_serial/tag_rfid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tag_rfid)))
  "Returns string type for a message object of type 'tag_rfid"
  "sdv_serial/tag_rfid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tag_rfid>)))
  "Returns md5sum for a message object of type '<tag_rfid>"
  "c3f9c1da1f4087a6c5d53653731980dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tag_rfid)))
  "Returns md5sum for a message object of type 'tag_rfid"
  "c3f9c1da1f4087a6c5d53653731980dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tag_rfid>)))
  "Returns full string definition for message of type '<tag_rfid>"
  (cl:format cl:nil "# tag_rfid.msg~%~%Header header~%string process~%string product~%string start_point~%string end_point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tag_rfid)))
  "Returns full string definition for message of type 'tag_rfid"
  (cl:format cl:nil "# tag_rfid.msg~%~%Header header~%string process~%string product~%string start_point~%string end_point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tag_rfid>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'process))
     4 (cl:length (cl:slot-value msg 'product))
     4 (cl:length (cl:slot-value msg 'start_point))
     4 (cl:length (cl:slot-value msg 'end_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tag_rfid>))
  "Converts a ROS message object to a list"
  (cl:list 'tag_rfid
    (cl:cons ':header (header msg))
    (cl:cons ':process (process msg))
    (cl:cons ':product (product msg))
    (cl:cons ':start_point (start_point msg))
    (cl:cons ':end_point (end_point msg))
))
