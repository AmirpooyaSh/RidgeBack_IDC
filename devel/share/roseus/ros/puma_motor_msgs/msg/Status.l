;; Auto-generated. Do not edit!


(when (boundp 'puma_motor_msgs::Status)
  (if (not (find-package "PUMA_MOTOR_MSGS"))
    (make-package "PUMA_MOTOR_MSGS"))
  (shadow 'Status (find-package "PUMA_MOTOR_MSGS")))
(unless (find-package "PUMA_MOTOR_MSGS::STATUS")
  (make-package "PUMA_MOTOR_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html


(intern "*MODE_VOLTAGE*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*MODE_VOLTAGE* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*MODE_VOLTAGE* 0)
(intern "*MODE_CURRENT*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*MODE_CURRENT* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*MODE_CURRENT* 1)
(intern "*MODE_SPEED*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*MODE_SPEED* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*MODE_SPEED* 2)
(intern "*MODE_POSITION*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*MODE_POSITION* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*MODE_POSITION* 3)
(intern "*MODE_VCOMP*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*MODE_VCOMP* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*MODE_VCOMP* 4)
(intern "*FAULT_CURRENT*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*FAULT_CURRENT* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*FAULT_CURRENT* 1)
(intern "*FAULT_TEMPERATURE*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*FAULT_TEMPERATURE* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*FAULT_TEMPERATURE* 2)
(intern "*FAULT_BUS_VOLTAGE*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*FAULT_BUS_VOLTAGE* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*FAULT_BUS_VOLTAGE* 4)
(intern "*FAULT_BRIDGE_DRIVER*" (find-package "PUMA_MOTOR_MSGS::STATUS"))
(shadow '*FAULT_BRIDGE_DRIVER* (find-package "PUMA_MOTOR_MSGS::STATUS"))
(defconstant puma_motor_msgs::Status::*FAULT_BRIDGE_DRIVER* 8)

(defun puma_motor_msgs::Status-to-symbol (const)
  (cond
        ((= const 0) 'puma_motor_msgs::Status::*MODE_VOLTAGE*)
        ((= const 1) 'puma_motor_msgs::Status::*MODE_CURRENT*)
        ((= const 2) 'puma_motor_msgs::Status::*MODE_SPEED*)
        ((= const 3) 'puma_motor_msgs::Status::*MODE_POSITION*)
        ((= const 4) 'puma_motor_msgs::Status::*MODE_VCOMP*)
        ((= const 1) 'puma_motor_msgs::Status::*FAULT_CURRENT*)
        ((= const 2) 'puma_motor_msgs::Status::*FAULT_TEMPERATURE*)
        ((= const 4) 'puma_motor_msgs::Status::*FAULT_BUS_VOLTAGE*)
        ((= const 8) 'puma_motor_msgs::Status::*FAULT_BRIDGE_DRIVER*)
        (t nil)))

(defclass puma_motor_msgs::Status
  :super ros::object
  :slots (_device_number _device_name _bus_voltage _temperature _output_voltage _analog_input _mode _fault ))

(defmethod puma_motor_msgs::Status
  (:init
   (&key
    ((:device_number __device_number) 0)
    ((:device_name __device_name) "")
    ((:bus_voltage __bus_voltage) 0.0)
    ((:temperature __temperature) 0.0)
    ((:output_voltage __output_voltage) 0.0)
    ((:analog_input __analog_input) 0.0)
    ((:mode __mode) 0)
    ((:fault __fault) 0)
    )
   (send-super :init)
   (setq _device_number (round __device_number))
   (setq _device_name (string __device_name))
   (setq _bus_voltage (float __bus_voltage))
   (setq _temperature (float __temperature))
   (setq _output_voltage (float __output_voltage))
   (setq _analog_input (float __analog_input))
   (setq _mode (round __mode))
   (setq _fault (round __fault))
   self)
  (:device_number
   (&optional __device_number)
   (if __device_number (setq _device_number __device_number)) _device_number)
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:bus_voltage
   (&optional __bus_voltage)
   (if __bus_voltage (setq _bus_voltage __bus_voltage)) _bus_voltage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:output_voltage
   (&optional __output_voltage)
   (if __output_voltage (setq _output_voltage __output_voltage)) _output_voltage)
  (:analog_input
   (&optional __analog_input)
   (if __analog_input (setq _analog_input __analog_input)) _analog_input)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:fault
   (&optional __fault)
   (if __fault (setq _fault __fault)) _fault)
  (:serialization-length
   ()
   (+
    ;; uint8 _device_number
    1
    ;; string _device_name
    4 (length _device_name)
    ;; float32 _bus_voltage
    4
    ;; float32 _temperature
    4
    ;; float32 _output_voltage
    4
    ;; float32 _analog_input
    4
    ;; uint8 _mode
    1
    ;; uint8 _fault
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _device_number
       (write-byte _device_number s)
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; float32 _bus_voltage
       (sys::poke _bus_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _output_voltage
       (sys::poke _output_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _analog_input
       (sys::poke _analog_input (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _fault
       (write-byte _fault s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _device_number
     (setq _device_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _bus_voltage
     (setq _bus_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _output_voltage
     (setq _output_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _analog_input
     (setq _analog_input (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fault
     (setq _fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get puma_motor_msgs::Status :md5sum-) "dfaa28177bcf41afb1fd540570b3e6a4")
(setf (get puma_motor_msgs::Status :datatype-) "puma_motor_msgs/Status")
(setf (get puma_motor_msgs::Status :definition-)
      "# Number on the bus (CAN ID).
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



(provide :puma_motor_msgs/Status "dfaa28177bcf41afb1fd540570b3e6a4")


