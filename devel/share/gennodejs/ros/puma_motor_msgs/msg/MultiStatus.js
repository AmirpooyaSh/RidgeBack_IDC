// Auto-generated. Do not edit!

// (in-package puma_motor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Status = require('./Status.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MultiStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drivers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drivers')) {
        this.drivers = initObj.drivers
      }
      else {
        this.drivers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drivers]
    // Serialize the length for message field [drivers]
    bufferOffset = _serializer.uint32(obj.drivers.length, buffer, bufferOffset);
    obj.drivers.forEach((val) => {
      bufferOffset = Status.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiStatus
    let len;
    let data = new MultiStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drivers]
    // Deserialize array length for message field [drivers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drivers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drivers[i] = Status.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.drivers.forEach((val) => {
      length += Status.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'puma_motor_msgs/MultiStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b746a938cc46965f9bbf07f2b2ae617a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    puma_motor_msgs/Status[] drivers
    
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
    MSG: puma_motor_msgs/Status
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
    const resolved = new MultiStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drivers !== undefined) {
      resolved.drivers = new Array(msg.drivers.length);
      for (let i = 0; i < resolved.drivers.length; ++i) {
        resolved.drivers[i] = Status.Resolve(msg.drivers[i]);
      }
    }
    else {
      resolved.drivers = []
    }

    return resolved;
    }
};

module.exports = MultiStatus;
