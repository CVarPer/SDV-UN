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

class sdv_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.energized = null;
      this.stand_by = null;
      this.rotate = null;
      this.turn_left = null;
      this.turn_right = null;
      this.reverse = null;
      this.forward = null;
      this.low_batt = null;
      this.emergency_stop = null;
      this.reset_pc = null;
      this.poweroff_pc = null;
      this.obstacle_stop = null;
      this.over_load = null;
      this.connection_error = null;
      this.tag_disconnected = null;
      this.tag_init = null;
      this.tag_is_on_platform = null;
      this.tag_read_error = null;
      this.tag_write_error = null;
      this.tag_close = null;
      this.not_connection_error = null;
      this.connection_error_imu = null;
      this.connection_error_msp = null;
      this.connection_error_rfid = null;
      this.connection_error_ult = null;
      this.connection_error_batt = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('energized')) {
        this.energized = initObj.energized
      }
      else {
        this.energized = false;
      }
      if (initObj.hasOwnProperty('stand_by')) {
        this.stand_by = initObj.stand_by
      }
      else {
        this.stand_by = false;
      }
      if (initObj.hasOwnProperty('rotate')) {
        this.rotate = initObj.rotate
      }
      else {
        this.rotate = false;
      }
      if (initObj.hasOwnProperty('turn_left')) {
        this.turn_left = initObj.turn_left
      }
      else {
        this.turn_left = false;
      }
      if (initObj.hasOwnProperty('turn_right')) {
        this.turn_right = initObj.turn_right
      }
      else {
        this.turn_right = false;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = false;
      }
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = false;
      }
      if (initObj.hasOwnProperty('low_batt')) {
        this.low_batt = initObj.low_batt
      }
      else {
        this.low_batt = false;
      }
      if (initObj.hasOwnProperty('emergency_stop')) {
        this.emergency_stop = initObj.emergency_stop
      }
      else {
        this.emergency_stop = false;
      }
      if (initObj.hasOwnProperty('reset_pc')) {
        this.reset_pc = initObj.reset_pc
      }
      else {
        this.reset_pc = false;
      }
      if (initObj.hasOwnProperty('poweroff_pc')) {
        this.poweroff_pc = initObj.poweroff_pc
      }
      else {
        this.poweroff_pc = false;
      }
      if (initObj.hasOwnProperty('obstacle_stop')) {
        this.obstacle_stop = initObj.obstacle_stop
      }
      else {
        this.obstacle_stop = false;
      }
      if (initObj.hasOwnProperty('over_load')) {
        this.over_load = initObj.over_load
      }
      else {
        this.over_load = false;
      }
      if (initObj.hasOwnProperty('connection_error')) {
        this.connection_error = initObj.connection_error
      }
      else {
        this.connection_error = false;
      }
      if (initObj.hasOwnProperty('tag_disconnected')) {
        this.tag_disconnected = initObj.tag_disconnected
      }
      else {
        this.tag_disconnected = false;
      }
      if (initObj.hasOwnProperty('tag_init')) {
        this.tag_init = initObj.tag_init
      }
      else {
        this.tag_init = false;
      }
      if (initObj.hasOwnProperty('tag_is_on_platform')) {
        this.tag_is_on_platform = initObj.tag_is_on_platform
      }
      else {
        this.tag_is_on_platform = false;
      }
      if (initObj.hasOwnProperty('tag_read_error')) {
        this.tag_read_error = initObj.tag_read_error
      }
      else {
        this.tag_read_error = false;
      }
      if (initObj.hasOwnProperty('tag_write_error')) {
        this.tag_write_error = initObj.tag_write_error
      }
      else {
        this.tag_write_error = false;
      }
      if (initObj.hasOwnProperty('tag_close')) {
        this.tag_close = initObj.tag_close
      }
      else {
        this.tag_close = false;
      }
      if (initObj.hasOwnProperty('not_connection_error')) {
        this.not_connection_error = initObj.not_connection_error
      }
      else {
        this.not_connection_error = false;
      }
      if (initObj.hasOwnProperty('connection_error_imu')) {
        this.connection_error_imu = initObj.connection_error_imu
      }
      else {
        this.connection_error_imu = false;
      }
      if (initObj.hasOwnProperty('connection_error_msp')) {
        this.connection_error_msp = initObj.connection_error_msp
      }
      else {
        this.connection_error_msp = false;
      }
      if (initObj.hasOwnProperty('connection_error_rfid')) {
        this.connection_error_rfid = initObj.connection_error_rfid
      }
      else {
        this.connection_error_rfid = false;
      }
      if (initObj.hasOwnProperty('connection_error_ult')) {
        this.connection_error_ult = initObj.connection_error_ult
      }
      else {
        this.connection_error_ult = false;
      }
      if (initObj.hasOwnProperty('connection_error_batt')) {
        this.connection_error_batt = initObj.connection_error_batt
      }
      else {
        this.connection_error_batt = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sdv_status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [energized]
    bufferOffset = _serializer.bool(obj.energized, buffer, bufferOffset);
    // Serialize message field [stand_by]
    bufferOffset = _serializer.bool(obj.stand_by, buffer, bufferOffset);
    // Serialize message field [rotate]
    bufferOffset = _serializer.bool(obj.rotate, buffer, bufferOffset);
    // Serialize message field [turn_left]
    bufferOffset = _serializer.bool(obj.turn_left, buffer, bufferOffset);
    // Serialize message field [turn_right]
    bufferOffset = _serializer.bool(obj.turn_right, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.bool(obj.reverse, buffer, bufferOffset);
    // Serialize message field [forward]
    bufferOffset = _serializer.bool(obj.forward, buffer, bufferOffset);
    // Serialize message field [low_batt]
    bufferOffset = _serializer.bool(obj.low_batt, buffer, bufferOffset);
    // Serialize message field [emergency_stop]
    bufferOffset = _serializer.bool(obj.emergency_stop, buffer, bufferOffset);
    // Serialize message field [reset_pc]
    bufferOffset = _serializer.bool(obj.reset_pc, buffer, bufferOffset);
    // Serialize message field [poweroff_pc]
    bufferOffset = _serializer.bool(obj.poweroff_pc, buffer, bufferOffset);
    // Serialize message field [obstacle_stop]
    bufferOffset = _serializer.bool(obj.obstacle_stop, buffer, bufferOffset);
    // Serialize message field [over_load]
    bufferOffset = _serializer.bool(obj.over_load, buffer, bufferOffset);
    // Serialize message field [connection_error]
    bufferOffset = _serializer.bool(obj.connection_error, buffer, bufferOffset);
    // Serialize message field [tag_disconnected]
    bufferOffset = _serializer.bool(obj.tag_disconnected, buffer, bufferOffset);
    // Serialize message field [tag_init]
    bufferOffset = _serializer.bool(obj.tag_init, buffer, bufferOffset);
    // Serialize message field [tag_is_on_platform]
    bufferOffset = _serializer.bool(obj.tag_is_on_platform, buffer, bufferOffset);
    // Serialize message field [tag_read_error]
    bufferOffset = _serializer.bool(obj.tag_read_error, buffer, bufferOffset);
    // Serialize message field [tag_write_error]
    bufferOffset = _serializer.bool(obj.tag_write_error, buffer, bufferOffset);
    // Serialize message field [tag_close]
    bufferOffset = _serializer.bool(obj.tag_close, buffer, bufferOffset);
    // Serialize message field [not_connection_error]
    bufferOffset = _serializer.bool(obj.not_connection_error, buffer, bufferOffset);
    // Serialize message field [connection_error_imu]
    bufferOffset = _serializer.bool(obj.connection_error_imu, buffer, bufferOffset);
    // Serialize message field [connection_error_msp]
    bufferOffset = _serializer.bool(obj.connection_error_msp, buffer, bufferOffset);
    // Serialize message field [connection_error_rfid]
    bufferOffset = _serializer.bool(obj.connection_error_rfid, buffer, bufferOffset);
    // Serialize message field [connection_error_ult]
    bufferOffset = _serializer.bool(obj.connection_error_ult, buffer, bufferOffset);
    // Serialize message field [connection_error_batt]
    bufferOffset = _serializer.bool(obj.connection_error_batt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sdv_status
    let len;
    let data = new sdv_status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [energized]
    data.energized = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stand_by]
    data.stand_by = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rotate]
    data.rotate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_left]
    data.turn_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_right]
    data.turn_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [forward]
    data.forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [low_batt]
    data.low_batt = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_stop]
    data.emergency_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_pc]
    data.reset_pc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [poweroff_pc]
    data.poweroff_pc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle_stop]
    data.obstacle_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [over_load]
    data.over_load = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connection_error]
    data.connection_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tag_disconnected]
    data.tag_disconnected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tag_init]
    data.tag_init = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tag_is_on_platform]
    data.tag_is_on_platform = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tag_read_error]
    data.tag_read_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tag_write_error]
    data.tag_write_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tag_close]
    data.tag_close = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [not_connection_error]
    data.not_connection_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connection_error_imu]
    data.connection_error_imu = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connection_error_msp]
    data.connection_error_msp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connection_error_rfid]
    data.connection_error_rfid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connection_error_ult]
    data.connection_error_ult = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [connection_error_batt]
    data.connection_error_batt = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sdv_serial/sdv_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5e0403860ad18cd570582530bdd6690';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sdv_status.msg
    
    Header header
    bool energized
    bool stand_by
    bool rotate
    bool turn_left
    bool turn_right
    bool reverse
    bool forward
    bool low_batt
    bool emergency_stop
    bool reset_pc
    bool poweroff_pc
    bool obstacle_stop
    bool over_load
    bool connection_error
    bool tag_disconnected
    bool tag_init
    bool tag_is_on_platform
    bool tag_read_error
    bool tag_write_error
    bool tag_close
    bool not_connection_error
    bool connection_error_imu
    bool connection_error_msp
    bool connection_error_rfid
    bool connection_error_ult
    bool connection_error_batt
    
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
    const resolved = new sdv_status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.energized !== undefined) {
      resolved.energized = msg.energized;
    }
    else {
      resolved.energized = false
    }

    if (msg.stand_by !== undefined) {
      resolved.stand_by = msg.stand_by;
    }
    else {
      resolved.stand_by = false
    }

    if (msg.rotate !== undefined) {
      resolved.rotate = msg.rotate;
    }
    else {
      resolved.rotate = false
    }

    if (msg.turn_left !== undefined) {
      resolved.turn_left = msg.turn_left;
    }
    else {
      resolved.turn_left = false
    }

    if (msg.turn_right !== undefined) {
      resolved.turn_right = msg.turn_right;
    }
    else {
      resolved.turn_right = false
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = false
    }

    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = false
    }

    if (msg.low_batt !== undefined) {
      resolved.low_batt = msg.low_batt;
    }
    else {
      resolved.low_batt = false
    }

    if (msg.emergency_stop !== undefined) {
      resolved.emergency_stop = msg.emergency_stop;
    }
    else {
      resolved.emergency_stop = false
    }

    if (msg.reset_pc !== undefined) {
      resolved.reset_pc = msg.reset_pc;
    }
    else {
      resolved.reset_pc = false
    }

    if (msg.poweroff_pc !== undefined) {
      resolved.poweroff_pc = msg.poweroff_pc;
    }
    else {
      resolved.poweroff_pc = false
    }

    if (msg.obstacle_stop !== undefined) {
      resolved.obstacle_stop = msg.obstacle_stop;
    }
    else {
      resolved.obstacle_stop = false
    }

    if (msg.over_load !== undefined) {
      resolved.over_load = msg.over_load;
    }
    else {
      resolved.over_load = false
    }

    if (msg.connection_error !== undefined) {
      resolved.connection_error = msg.connection_error;
    }
    else {
      resolved.connection_error = false
    }

    if (msg.tag_disconnected !== undefined) {
      resolved.tag_disconnected = msg.tag_disconnected;
    }
    else {
      resolved.tag_disconnected = false
    }

    if (msg.tag_init !== undefined) {
      resolved.tag_init = msg.tag_init;
    }
    else {
      resolved.tag_init = false
    }

    if (msg.tag_is_on_platform !== undefined) {
      resolved.tag_is_on_platform = msg.tag_is_on_platform;
    }
    else {
      resolved.tag_is_on_platform = false
    }

    if (msg.tag_read_error !== undefined) {
      resolved.tag_read_error = msg.tag_read_error;
    }
    else {
      resolved.tag_read_error = false
    }

    if (msg.tag_write_error !== undefined) {
      resolved.tag_write_error = msg.tag_write_error;
    }
    else {
      resolved.tag_write_error = false
    }

    if (msg.tag_close !== undefined) {
      resolved.tag_close = msg.tag_close;
    }
    else {
      resolved.tag_close = false
    }

    if (msg.not_connection_error !== undefined) {
      resolved.not_connection_error = msg.not_connection_error;
    }
    else {
      resolved.not_connection_error = false
    }

    if (msg.connection_error_imu !== undefined) {
      resolved.connection_error_imu = msg.connection_error_imu;
    }
    else {
      resolved.connection_error_imu = false
    }

    if (msg.connection_error_msp !== undefined) {
      resolved.connection_error_msp = msg.connection_error_msp;
    }
    else {
      resolved.connection_error_msp = false
    }

    if (msg.connection_error_rfid !== undefined) {
      resolved.connection_error_rfid = msg.connection_error_rfid;
    }
    else {
      resolved.connection_error_rfid = false
    }

    if (msg.connection_error_ult !== undefined) {
      resolved.connection_error_ult = msg.connection_error_ult;
    }
    else {
      resolved.connection_error_ult = false
    }

    if (msg.connection_error_batt !== undefined) {
      resolved.connection_error_batt = msg.connection_error_batt;
    }
    else {
      resolved.connection_error_batt = false
    }

    return resolved;
    }
};

module.exports = sdv_status;
