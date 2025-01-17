# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from puma_motor_msgs/Feedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Feedback(genpy.Message):
  _md5sum = "84395259b34088c5160a95e5fe354848"
  _type = "puma_motor_msgs/Feedback"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Number on the bus (CAN ID).
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
"""
  __slots__ = ['device_number','device_name','duty_cycle','current','travel','speed','setpoint']
  _slot_types = ['uint8','string','float32','float32','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       device_number,device_name,duty_cycle,current,travel,speed,setpoint

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Feedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.device_number is None:
        self.device_number = 0
      if self.device_name is None:
        self.device_name = ''
      if self.duty_cycle is None:
        self.duty_cycle = 0.
      if self.current is None:
        self.current = 0.
      if self.travel is None:
        self.travel = 0.
      if self.speed is None:
        self.speed = 0.
      if self.setpoint is None:
        self.setpoint = 0.
    else:
      self.device_number = 0
      self.device_name = ''
      self.duty_cycle = 0.
      self.current = 0.
      self.travel = 0.
      self.speed = 0.
      self.setpoint = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.device_number
      buff.write(_get_struct_B().pack(_x))
      _x = self.device_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f3d().pack(_x.duty_cycle, _x.current, _x.travel, _x.speed, _x.setpoint))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.device_number,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.device_name = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.duty_cycle, _x.current, _x.travel, _x.speed, _x.setpoint,) = _get_struct_2f3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.device_number
      buff.write(_get_struct_B().pack(_x))
      _x = self.device_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f3d().pack(_x.duty_cycle, _x.current, _x.travel, _x.speed, _x.setpoint))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.device_number,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.device_name = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.duty_cycle, _x.current, _x.travel, _x.speed, _x.setpoint,) = _get_struct_2f3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f3d = None
def _get_struct_2f3d():
    global _struct_2f3d
    if _struct_2f3d is None:
        _struct_2f3d = struct.Struct("<2f3d")
    return _struct_2f3d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
