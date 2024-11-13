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

class motors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_percent = null;
      this.right_percent = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_percent')) {
        this.left_percent = initObj.left_percent
      }
      else {
        this.left_percent = 0.0;
      }
      if (initObj.hasOwnProperty('right_percent')) {
        this.right_percent = initObj.right_percent
      }
      else {
        this.right_percent = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motors
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_percent]
    bufferOffset = _serializer.float64(obj.left_percent, buffer, bufferOffset);
    // Serialize message field [right_percent]
    bufferOffset = _serializer.float64(obj.right_percent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motors
    let len;
    let data = new motors(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_percent]
    data.left_percent = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_percent]
    data.right_percent = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sdv_serial/motors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e58c5a22817d4395c3b395712a961a60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # motors.msg
    
    Header header
    float64 left_percent
    float64 right_percent
    
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
    const resolved = new motors(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_percent !== undefined) {
      resolved.left_percent = msg.left_percent;
    }
    else {
      resolved.left_percent = 0.0
    }

    if (msg.right_percent !== undefined) {
      resolved.right_percent = msg.right_percent;
    }
    else {
      resolved.right_percent = 0.0
    }

    return resolved;
    }
};

module.exports = motors;
