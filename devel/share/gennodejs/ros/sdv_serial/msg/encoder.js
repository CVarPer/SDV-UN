// Auto-generated. Do not edit!

// (in-package sdv_serial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rpm_left = null;
      this.rpm_right = null;
      this.motor_current_left = null;
      this.motor_current_right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rpm_left')) {
        this.rpm_left = initObj.rpm_left
      }
      else {
        this.rpm_left = 0;
      }
      if (initObj.hasOwnProperty('rpm_right')) {
        this.rpm_right = initObj.rpm_right
      }
      else {
        this.rpm_right = 0;
      }
      if (initObj.hasOwnProperty('motor_current_left')) {
        this.motor_current_left = initObj.motor_current_left
      }
      else {
        this.motor_current_left = 0;
      }
      if (initObj.hasOwnProperty('motor_current_right')) {
        this.motor_current_right = initObj.motor_current_right
      }
      else {
        this.motor_current_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type encoder
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rpm_left]
    bufferOffset = _serializer.int32(obj.rpm_left, buffer, bufferOffset);
    // Serialize message field [rpm_right]
    bufferOffset = _serializer.int32(obj.rpm_right, buffer, bufferOffset);
    // Serialize message field [motor_current_left]
    bufferOffset = _serializer.int32(obj.motor_current_left, buffer, bufferOffset);
    // Serialize message field [motor_current_right]
    bufferOffset = _serializer.int32(obj.motor_current_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type encoder
    let len;
    let data = new encoder(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpm_left]
    data.rpm_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rpm_right]
    data.rpm_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor_current_left]
    data.motor_current_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor_current_right]
    data.motor_current_right = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sdv_serial/encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90f42d76d2f804a6ce733d6653f63794';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # encoder.msg
    
    Header header
    int32 rpm_left
    int32 rpm_right
    int32 motor_current_left
    int32 motor_current_right
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new encoder(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rpm_left !== undefined) {
      resolved.rpm_left = msg.rpm_left;
    }
    else {
      resolved.rpm_left = 0
    }

    if (msg.rpm_right !== undefined) {
      resolved.rpm_right = msg.rpm_right;
    }
    else {
      resolved.rpm_right = 0
    }

    if (msg.motor_current_left !== undefined) {
      resolved.motor_current_left = msg.motor_current_left;
    }
    else {
      resolved.motor_current_left = 0
    }

    if (msg.motor_current_right !== undefined) {
      resolved.motor_current_right = msg.motor_current_right;
    }
    else {
      resolved.motor_current_right = 0
    }

    return resolved;
    }
};

module.exports = encoder;
