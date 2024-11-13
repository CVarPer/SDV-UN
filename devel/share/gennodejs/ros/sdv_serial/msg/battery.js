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

class battery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_main = null;
      this.voltage_main = null;
      this.current_laser = null;
      this.voltage_laser = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_main')) {
        this.current_main = initObj.current_main
      }
      else {
        this.current_main = 0;
      }
      if (initObj.hasOwnProperty('voltage_main')) {
        this.voltage_main = initObj.voltage_main
      }
      else {
        this.voltage_main = 0;
      }
      if (initObj.hasOwnProperty('current_laser')) {
        this.current_laser = initObj.current_laser
      }
      else {
        this.current_laser = 0;
      }
      if (initObj.hasOwnProperty('voltage_laser')) {
        this.voltage_laser = initObj.voltage_laser
      }
      else {
        this.voltage_laser = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type battery
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_main]
    bufferOffset = _serializer.uint32(obj.current_main, buffer, bufferOffset);
    // Serialize message field [voltage_main]
    bufferOffset = _serializer.uint32(obj.voltage_main, buffer, bufferOffset);
    // Serialize message field [current_laser]
    bufferOffset = _serializer.uint32(obj.current_laser, buffer, bufferOffset);
    // Serialize message field [voltage_laser]
    bufferOffset = _serializer.uint32(obj.voltage_laser, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type battery
    let len;
    let data = new battery(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_main]
    data.current_main = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [voltage_main]
    data.voltage_main = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [current_laser]
    data.current_laser = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [voltage_laser]
    data.voltage_laser = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sdv_serial/battery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcf3e17e1084d22d987c211f14da987c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # battery.msg
    
    Header header
    uint32 current_main
    uint32 voltage_main
    uint32 current_laser
    uint32 voltage_laser
    
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
    const resolved = new battery(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_main !== undefined) {
      resolved.current_main = msg.current_main;
    }
    else {
      resolved.current_main = 0
    }

    if (msg.voltage_main !== undefined) {
      resolved.voltage_main = msg.voltage_main;
    }
    else {
      resolved.voltage_main = 0
    }

    if (msg.current_laser !== undefined) {
      resolved.current_laser = msg.current_laser;
    }
    else {
      resolved.current_laser = 0
    }

    if (msg.voltage_laser !== undefined) {
      resolved.voltage_laser = msg.voltage_laser;
    }
    else {
      resolved.voltage_laser = 0
    }

    return resolved;
    }
};

module.exports = battery;
