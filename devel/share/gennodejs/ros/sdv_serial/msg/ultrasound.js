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

class ultrasound {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_1 = null;
      this.sensor_2 = null;
      this.sensor_3 = null;
      this.sensor_4 = null;
      this.sensor_5 = null;
      this.sensor_6 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor_1')) {
        this.sensor_1 = initObj.sensor_1
      }
      else {
        this.sensor_1 = 0;
      }
      if (initObj.hasOwnProperty('sensor_2')) {
        this.sensor_2 = initObj.sensor_2
      }
      else {
        this.sensor_2 = 0;
      }
      if (initObj.hasOwnProperty('sensor_3')) {
        this.sensor_3 = initObj.sensor_3
      }
      else {
        this.sensor_3 = 0;
      }
      if (initObj.hasOwnProperty('sensor_4')) {
        this.sensor_4 = initObj.sensor_4
      }
      else {
        this.sensor_4 = 0;
      }
      if (initObj.hasOwnProperty('sensor_5')) {
        this.sensor_5 = initObj.sensor_5
      }
      else {
        this.sensor_5 = 0;
      }
      if (initObj.hasOwnProperty('sensor_6')) {
        this.sensor_6 = initObj.sensor_6
      }
      else {
        this.sensor_6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultrasound
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_1]
    bufferOffset = _serializer.uint32(obj.sensor_1, buffer, bufferOffset);
    // Serialize message field [sensor_2]
    bufferOffset = _serializer.uint32(obj.sensor_2, buffer, bufferOffset);
    // Serialize message field [sensor_3]
    bufferOffset = _serializer.uint32(obj.sensor_3, buffer, bufferOffset);
    // Serialize message field [sensor_4]
    bufferOffset = _serializer.uint32(obj.sensor_4, buffer, bufferOffset);
    // Serialize message field [sensor_5]
    bufferOffset = _serializer.uint32(obj.sensor_5, buffer, bufferOffset);
    // Serialize message field [sensor_6]
    bufferOffset = _serializer.uint32(obj.sensor_6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultrasound
    let len;
    let data = new ultrasound(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_1]
    data.sensor_1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sensor_2]
    data.sensor_2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sensor_3]
    data.sensor_3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sensor_4]
    data.sensor_4 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sensor_5]
    data.sensor_5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sensor_6]
    data.sensor_6 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sdv_serial/ultrasound';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c80239b21235e64744244a0b31a2c700';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ultrasound.msg
    
    Header header
    uint32 sensor_1
    uint32 sensor_2
    uint32 sensor_3
    uint32 sensor_4
    uint32 sensor_5
    uint32 sensor_6
    
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
    const resolved = new ultrasound(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor_1 !== undefined) {
      resolved.sensor_1 = msg.sensor_1;
    }
    else {
      resolved.sensor_1 = 0
    }

    if (msg.sensor_2 !== undefined) {
      resolved.sensor_2 = msg.sensor_2;
    }
    else {
      resolved.sensor_2 = 0
    }

    if (msg.sensor_3 !== undefined) {
      resolved.sensor_3 = msg.sensor_3;
    }
    else {
      resolved.sensor_3 = 0
    }

    if (msg.sensor_4 !== undefined) {
      resolved.sensor_4 = msg.sensor_4;
    }
    else {
      resolved.sensor_4 = 0
    }

    if (msg.sensor_5 !== undefined) {
      resolved.sensor_5 = msg.sensor_5;
    }
    else {
      resolved.sensor_5 = 0
    }

    if (msg.sensor_6 !== undefined) {
      resolved.sensor_6 = msg.sensor_6;
    }
    else {
      resolved.sensor_6 = 0
    }

    return resolved;
    }
};

module.exports = ultrasound;
