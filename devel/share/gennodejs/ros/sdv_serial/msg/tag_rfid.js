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

class tag_rfid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.process = null;
      this.product = null;
      this.start_point = null;
      this.end_point = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('process')) {
        this.process = initObj.process
      }
      else {
        this.process = '';
      }
      if (initObj.hasOwnProperty('product')) {
        this.product = initObj.product
      }
      else {
        this.product = '';
      }
      if (initObj.hasOwnProperty('start_point')) {
        this.start_point = initObj.start_point
      }
      else {
        this.start_point = '';
      }
      if (initObj.hasOwnProperty('end_point')) {
        this.end_point = initObj.end_point
      }
      else {
        this.end_point = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tag_rfid
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [process]
    bufferOffset = _serializer.string(obj.process, buffer, bufferOffset);
    // Serialize message field [product]
    bufferOffset = _serializer.string(obj.product, buffer, bufferOffset);
    // Serialize message field [start_point]
    bufferOffset = _serializer.string(obj.start_point, buffer, bufferOffset);
    // Serialize message field [end_point]
    bufferOffset = _serializer.string(obj.end_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tag_rfid
    let len;
    let data = new tag_rfid(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [process]
    data.process = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [product]
    data.product = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_point]
    data.start_point = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_point]
    data.end_point = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.process.length;
    length += object.product.length;
    length += object.start_point.length;
    length += object.end_point.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sdv_serial/tag_rfid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3f9c1da1f4087a6c5d53653731980dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # tag_rfid.msg
    
    Header header
    string process
    string product
    string start_point
    string end_point
    
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
    const resolved = new tag_rfid(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.process !== undefined) {
      resolved.process = msg.process;
    }
    else {
      resolved.process = ''
    }

    if (msg.product !== undefined) {
      resolved.product = msg.product;
    }
    else {
      resolved.product = ''
    }

    if (msg.start_point !== undefined) {
      resolved.start_point = msg.start_point;
    }
    else {
      resolved.start_point = ''
    }

    if (msg.end_point !== undefined) {
      resolved.end_point = msg.end_point;
    }
    else {
      resolved.end_point = ''
    }

    return resolved;
    }
};

module.exports = tag_rfid;
