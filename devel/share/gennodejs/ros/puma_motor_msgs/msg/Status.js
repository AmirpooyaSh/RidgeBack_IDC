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

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_number = null;
      this.device_name = null;
      this.bus_voltage = null;
      this.temperature = null;
      this.output_voltage = null;
      this.analog_input = null;
      this.mode = null;
      this.fault = null;
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
      if (initObj.hasOwnProperty('bus_voltage')) {
        this.bus_voltage = initObj.bus_voltage
      }
      else {
        this.bus_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('output_voltage')) {
        this.output_voltage = initObj.output_voltage
      }
      else {
        this.output_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('analog_input')) {
        this.analog_input = initObj.analog_input
      }
      else {
        this.analog_input = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('fault')) {
        this.fault = initObj.fault
      }
      else {
        this.fault = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [device_number]
    bufferOffset = _serializer.uint8(obj.device_number, buffer, bufferOffset);
    // Serialize message field [device_name]
    bufferOffset = _serializer.string(obj.device_name, buffer, bufferOffset);
    // Serialize message field [bus_voltage]
    bufferOffset = _serializer.float32(obj.bus_voltage, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [output_voltage]
    bufferOffset = _serializer.float32(obj.output_voltage, buffer, bufferOffset);
    // Serialize message field [analog_input]
    bufferOffset = _serializer.float32(obj.analog_input, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [fault]
    bufferOffset = _serializer.uint8(obj.fault, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [device_number]
    data.device_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [device_name]
    data.device_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bus_voltage]
    data.bus_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [output_voltage]
    data.output_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [analog_input]
    data.analog_input = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fault]
    data.fault = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.device_name);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'puma_motor_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfaa28177bcf41afb1fd540570b3e6a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Number on the bus (CAN ID).
    uint8 device_number
    
    # Name of joint controlled, or other identifier.
    string device_name
    
    # Input terminal voltage (volts).
    float32 bus_voltage
    
    # Internal driver temperature (degC).
    float32 temperature
    
    # Voltage as output to the motor (volts).
    float32 output_voltage
    
    # Value of the auxiliary ADC (volts).
    float32 analog_input
    
    # Available control modes, not all of which are broken out to
    # this ROS driver.
    uint8 MODE_VOLTAGE=0
    uint8 MODE_CURRENT=1
    uint8 MODE_SPEED=2
    uint8 MODE_POSITION=3
    uint8 MODE_VCOMP=4
    uint8 mode
    
    # Fault states which could cause the driver to be immobilized.
    uint8 FAULT_CURRENT=1
    uint8 FAULT_TEMPERATURE=2
    uint8 FAULT_BUS_VOLTAGE=4
    uint8 FAULT_BRIDGE_DRIVER=8
    uint8 fault
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
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

    if (msg.bus_voltage !== undefined) {
      resolved.bus_voltage = msg.bus_voltage;
    }
    else {
      resolved.bus_voltage = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.output_voltage !== undefined) {
      resolved.output_voltage = msg.output_voltage;
    }
    else {
      resolved.output_voltage = 0.0
    }

    if (msg.analog_input !== undefined) {
      resolved.analog_input = msg.analog_input;
    }
    else {
      resolved.analog_input = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.fault !== undefined) {
      resolved.fault = msg.fault;
    }
    else {
      resolved.fault = 0
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  MODE_VOLTAGE: 0,
  MODE_CURRENT: 1,
  MODE_SPEED: 2,
  MODE_POSITION: 3,
  MODE_VCOMP: 4,
  FAULT_CURRENT: 1,
  FAULT_TEMPERATURE: 2,
  FAULT_BUS_VOLTAGE: 4,
  FAULT_BRIDGE_DRIVER: 8,
}

module.exports = Status;
