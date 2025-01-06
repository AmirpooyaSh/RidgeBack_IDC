// Auto-generated. Do not edit!

// (in-package puma_motor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Feedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_number = null;
      this.device_name = null;
      this.duty_cycle = null;
      this.current = null;
      this.travel = null;
      this.speed = null;
      this.setpoint = null;
    }
    else {
      if (initObj.hasOwnProperty('device_number')) {
        this.device_number = initObj.device_number
      }
      else {
        this.device_number = 0;
      }
      if (initObj.hasOwnProperty('device_name')) {
        this.device_name = initObj.device_name
      }
      else {
        this.device_name = '';
      }
      if (initObj.hasOwnProperty('duty_cycle')) {
        this.duty_cycle = initObj.duty_cycle
      }
      else {
        this.duty_cycle = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('travel')) {
        this.travel = initObj.travel
      }
      else {
        this.travel = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('setpoint')) {
        this.setpoint = initObj.setpoint
      }
      else {
        this.setpoint = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Feedback
    // Serialize message field [device_number]
    bufferOffset = _serializer.uint8(obj.device_number, buffer, bufferOffset);
    // Serialize message field [device_name]
    bufferOffset = _serializer.string(obj.device_name, buffer, bufferOffset);
    // Serialize message field [duty_cycle]
    bufferOffset = _serializer.float32(obj.duty_cycle, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [travel]
    bufferOffset = _serializer.float64(obj.travel, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [setpoint]
    bufferOffset = _serializer.float64(obj.setpoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Feedback
    let len;
    let data = new Feedback(null);
    // Deserialize message field [device_number]
    data.device_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [device_name]
    data.device_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [duty_cycle]
    data.duty_cycle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [travel]
    data.travel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [setpoint]
    data.setpoint = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.device_name);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'puma_motor_msgs/Feedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84395259b34088c5160a95e5fe354848';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Feedback(null);
    if (msg.device_number !== undefined) {
      resolved.device_number = msg.device_number;
    }
    else {
      resolved.device_number = 0
    }

    if (msg.device_name !== undefined) {
      resolved.device_name = msg.device_name;
    }
    else {
      resolved.device_name = ''
    }

    if (msg.duty_cycle !== undefined) {
      resolved.duty_cycle = msg.duty_cycle;
    }
    else {
      resolved.duty_cycle = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.travel !== undefined) {
      resolved.travel = msg.travel;
    }
    else {
      resolved.travel = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.setpoint !== undefined) {
      resolved.setpoint = msg.setpoint;
    }
    else {
      resolved.setpoint = 0.0
    }

    return resolved;
    }
};

module.exports = Feedback;
