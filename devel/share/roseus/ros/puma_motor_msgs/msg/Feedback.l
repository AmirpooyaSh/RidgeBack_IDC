;; Auto-generated. Do not edit!


(when (boundp 'puma_motor_msgs::Feedback)
  (if (not (find-package "PUMA_MOTOR_MSGS"))
    (make-package "PUMA_MOTOR_MSGS"))
  (shadow 'Feedback (find-package "PUMA_MOTOR_MSGS")))
(unless (find-package "PUMA_MOTOR_MSGS::FEEDBACK")
  (make-package "PUMA_MOTOR_MSGS::FEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude Feedback.msg.html


(defclass puma_motor_msgs::Feedback
  :super ros::object
  :slots (_device_number _device_name _duty_cycle _current _travel _speed _setpoint ))

(defmethod puma_motor_msgs::Feedback
  (:init
   (&key
    ((:device_number __device_number) 0)
    ((:device_name __device_name) "")
    ((:duty_cycle __duty_cycle) 0.0)
    ((:current __current) 0.0)
    ((:travel __travel) 0.0)
    ((:speed __speed) 0.0)
    ((:setpoint __setpoint) 0.0)
    )
   (send-super :init)
   (setq _device_number (round __device_number))
   (setq _device_name (string __device_name))
   (setq _duty_cycle (float __duty_cycle))
   (setq _current (float __current))
   (setq _travel (float __travel))
   (setq _speed (float __speed))
   (setq _setpoint (float __setpoint))
   self)
  (:device_number
   (&optional __device_number)
   (if __device_number (setq _device_number __device_number)) _device_number)
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:duty_cycle
   (&optional __duty_cycle)
   (if __duty_cycle (setq _duty_cycle __duty_cycle)) _duty_cycle)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:travel
   (&optional __travel)
   (if __travel (setq _travel __travel)) _travel)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:serialization-length
   ()
   (+
    ;; uint8 _device_number
    1
    ;; string _device_name
    4 (length _device_name)
    ;; float32 _duty_cycle
    4
    ;; float32 _current
    4
    ;; float64 _travel
    8
    ;; float64 _speed
    8
    ;; float64 _setpoint
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _device_number
       (write-byte _device_number s)
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; float32 _duty_cycle
       (sys::poke _duty_cycle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _travel
       (sys::poke _travel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _setpoint
       (sys::poke _setpoint (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _device_number
     (setq _device_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _duty_cycle
     (setq _duty_cycle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _travel
     (setq _travel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _setpoint
     (setq _setpoint (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get puma_motor_msgs::Feedback :md5sum-) "84395259b34088c5160a95e5fe354848")
(setf (get puma_motor_msgs::Feedback :datatype-) "puma_motor_msgs/Feedback")
(setf (get puma_motor_msgs::Feedback :definition-)
      "# Number on the bus (CAN ID).
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

")



(provide :puma_motor_msgs/Feedback "84395259b34088c5160a95e5fe354848")


