; Auto-generated. Do not edit!


(cl:in-package sdv_serial-msg)


;//! \htmlinclude battery.msg.html

(cl:defclass <battery> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_main
    :reader current_main
    :initarg :current_main
    :type cl:integer
    :initform 0)
   (voltage_main
    :reader voltage_main
    :initarg :voltage_main
    :type cl:integer
    :initform 0)
   (current_laser
    :reader current_laser
    :initarg :current_laser
    :type cl:integer
    :initform 0)
   (voltage_laser
    :reader voltage_laser
    :initarg :voltage_laser
    :type cl:integer
    :initform 0))
)

(cl:defclass battery (<battery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <battery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'battery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdv_serial-msg:<battery> is deprecated: use sdv_serial-msg:battery instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:header-val is deprecated.  Use sdv_serial-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_main-val :lambda-list '(m))
(cl:defmethod current_main-val ((m <battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:current_main-val is deprecated.  Use sdv_serial-msg:current_main instead.")
  (current_main m))

(cl:ensure-generic-function 'voltage_main-val :lambda-list '(m))
(cl:defmethod voltage_main-val ((m <battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:voltage_main-val is deprecated.  Use sdv_serial-msg:voltage_main instead.")
  (voltage_main m))

(cl:ensure-generic-function 'current_laser-val :lambda-list '(m))
(cl:defmethod current_laser-val ((m <battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:current_laser-val is deprecated.  Use sdv_serial-msg:current_laser instead.")
  (current_laser m))

(cl:ensure-generic-function 'voltage_laser-val :lambda-list '(m))
(cl:defmethod voltage_laser-val ((m <battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdv_serial-msg:voltage_laser-val is deprecated.  Use sdv_serial-msg:voltage_laser instead.")
  (voltage_laser m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <battery>) ostream)
  "Serializes a message object of type '<battery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voltage_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voltage_main)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_laser)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_laser)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_laser)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_laser)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage_laser)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage_laser)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voltage_laser)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voltage_laser)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <battery>) istream)
  "Deserializes a message object of type '<battery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voltage_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voltage_main)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_laser)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_laser)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_laser)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_laser)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage_laser)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage_laser)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voltage_laser)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voltage_laser)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<battery>)))
  "Returns string type for a message object of type '<battery>"
  "sdv_serial/battery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery)))
  "Returns string type for a message object of type 'battery"
  "sdv_serial/battery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<battery>)))
  "Returns md5sum for a message object of type '<battery>"
  "fcf3e17e1084d22d987c211f14da987c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'battery)))
  "Returns md5sum for a message object of type 'battery"
  "fcf3e17e1084d22d987c211f14da987c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<battery>)))
  "Returns full string definition for message of type '<battery>"
  (cl:format cl:nil "# battery.msg~%~%Header header~%uint32 current_main~%uint32 voltage_main~%uint32 current_laser~%uint32 voltage_laser~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'battery)))
  "Returns full string definition for message of type 'battery"
  (cl:format cl:nil "# battery.msg~%~%Header header~%uint32 current_main~%uint32 voltage_main~%uint32 current_laser~%uint32 voltage_laser~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <battery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <battery>))
  "Converts a ROS message object to a list"
  (cl:list 'battery
    (cl:cons ':header (header msg))
    (cl:cons ':current_main (current_main msg))
    (cl:cons ':voltage_main (voltage_main msg))
    (cl:cons ':current_laser (current_laser msg))
    (cl:cons ':voltage_laser (voltage_laser msg))
))
