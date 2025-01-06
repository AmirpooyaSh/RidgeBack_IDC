// Auto-generated. Do not edit!

// (in-package puma_motor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Feedback = require('./Feedback.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MultiFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drivers_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drivers_feedback')) {
        this.drivers_feedback = initObj.drivers_feedback
      }
      else {
        this.drivers_feedback = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drivers_feedback]
    // Serialize the length for message field [drivers_feedback]
    bufferOffset = _serializer.uint32(obj.drivers_feedback.length, buffer, bufferOffset);
    obj.drivers_feedback.forEach((val) => {
      bufferOffset = Feedback.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiFeedback
    let len;
    let data = new MultiFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drivers_feedback]
    // Deserialize array length for message field [drivers_feedback]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drivers_feedback = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drivers_feedback[i] = Feedback.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.drivers_feedback.forEach((val) => {
      length += Feedback.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'puma_motor_msgs/MultiFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85bac0c3867f66b345e907ea2081c354';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    puma_motor_msgs/Feedback[] drivers_feedback
    
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
    
    ================================================================================
    MSG: puma_motor_msgs/Feedback
    # Number on the bus (CAN ID).
    uint8 device_number
    
    # Name of joint controlled, or other identifier.
    string device_name
    
    # Duty cycle of the h-bridge driver (-1..1).
    float32 duty_cycle
    
    # Current consumed (amps).
    float32 current
    
    # Travel as measured by the encoder (rad).
    float64 travel
    
    # Angular velocity as measured by the encoder (rad/s).
    float64 speed
    
    # The reported setpoint value of the on-board controller for the given mode.
    # In voltage control, duty cycle of the h-bridge driver (-1..1).
    # In speed control, angular velocity setpoint of the on-board controller (rad/s).
    # In position control, travel as measured by the encoder (rad).
    # In current control, the current consumed (amps).
    float64 setpoint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drivers_feedback !== undefined) {
      resolved.drivers_feedback = new Array(msg.drivers_feedback.length);
      for (let i = 0; i < resolved.drivers_feedback.length; ++i) {
        resolved.drivers_feedback[i] = Feedback.Resolve(msg.drivers_feedback[i]);
      }
    }
    else {
      resolved.drivers_feedback = []
    }

    return resolved;
    }
};

module.exports = MultiFeedback;
