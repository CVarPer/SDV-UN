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

class flexiforce {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_left = null;
      this.front_right = null;
      this.back_left = null;
      this.back_right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_left')) {
        this.front_left = initObj.front_left
      }
      else {
        this.front_left = 0;
      }
      if (initObj.hasOwnProperty('front_right')) {
        this.front_right = initObj.front_right
      }
      else {
        this.front_right = 0;
      }
      if (initObj.hasOwnProperty('back_left')) {
        this.back_left = initObj.back_left
      }
      else {
        this.back_left = 0;
      }
      if (initObj.hasOwnProperty('back_right')) {
        this.back_right = initObj.back_right
      }
      else {
        this.back_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type flexiforce
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_left]
    bufferOffset = _serializer.uint32(obj.front_left, buffer, bufferOffset);
    // Serialize message field [front_right]
    bufferOffset = _serializer.uint32(obj.front_right, buffer, bufferOffset);
    // Serialize message field [back_left]
    bufferOffset = _serializer.uint32(obj.back_left, buffer, bufferOffset);
    // Serialize message field [back_right]
    bufferOffset = _serializer.uint32(obj.back_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type flexiforce
    let len;
    let data = new flexiforce(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_left]
    data.front_left = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [front_right]
    data.front_right = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [back_left]
    data.back_left = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [back_right]
    data.back_right = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sdv_serial/flexiforce';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f72264109dc46f89ab08fae02832706b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # flexiforce.msg
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new flexiforce(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_left !== undefined) {
      resolved.front_left = msg.front_left;
    }
    else {
      resolved.front_left = 0
    }

    if (msg.front_right !== undefined) {
      resolved.front_right = msg.front_right;
    }
    else {
      resolved.front_right = 0
    }

    if (msg.back_left !== undefined) {
      resolved.back_left = msg.back_left;
    }
    else {
      resolved.back_left = 0
    }

    if (msg.back_right !== undefined) {
      resolved.back_right = msg.back_right;
    }
    else {
      resolved.back_right = 0
    }

    return resolved;
    }
};

module.exports = flexiforce;
