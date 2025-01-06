;; Auto-generated. Do not edit!


(when (boundp 'puma_motor_msgs::MultiStatus)
  (if (not (find-package "PUMA_MOTOR_MSGS"))
    (make-package "PUMA_MOTOR_MSGS"))
  (shadow 'MultiStatus (find-package "PUMA_MOTOR_MSGS")))
(unless (find-package "PUMA_MOTOR_MSGS::MULTISTATUS")
  (make-package "PUMA_MOTOR_MSGS::MULTISTATUS"))

(in-package "ROS")
;;//! \htmlinclude MultiStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass puma_motor_msgs::MultiStatus
  :super ros::object
  :slots (_header _drivers ))

(defmethod puma_motor_msgs::MultiStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drivers __drivers) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _drivers __drivers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drivers
   (&rest __drivers)
   (if (keywordp (car __drivers))
       (send* _drivers __drivers)
     (progn
       (if __drivers (setq _drivers (car __drivers)))
       _drivers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; puma_motor_msgs/Status[] _drivers
    (apply #'+ (send-all _drivers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; puma_motor_msgs/Status[] _drivers
     (write-long (length _drivers) s)
     (dolist (elem _drivers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; puma_motor_msgs/Status[] _drivers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drivers (let (r) (dotimes (i n) (push (instance puma_motor_msgs::Status :init) r)) r))
     (dolist (elem- _drivers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get puma_motor_msgs::MultiStatus :md5sum-) "b746a938cc46965f9bbf07f2b2ae617a")
(setf (get puma_motor_msgs::MultiStatus :datatype-) "puma_motor_msgs/MultiStatus")
(setf (get puma_motor_msgs::MultiStatus :definition-)
      "Header header

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

")



(provide :puma_motor_msgs/MultiStatus "b746a938cc46965f9bbf07f2b2ae617a")


