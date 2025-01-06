;; Auto-generated. Do not edit!


(when (boundp 'puma_motor_msgs::MultiFeedback)
  (if (not (find-package "PUMA_MOTOR_MSGS"))
    (make-package "PUMA_MOTOR_MSGS"))
  (shadow 'MultiFeedback (find-package "PUMA_MOTOR_MSGS")))
(unless (find-package "PUMA_MOTOR_MSGS::MULTIFEEDBACK")
  (make-package "PUMA_MOTOR_MSGS::MULTIFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude MultiFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass puma_motor_msgs::MultiFeedback
  :super ros::object
  :slots (_header _drivers_feedback ))

(defmethod puma_motor_msgs::MultiFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drivers_feedback __drivers_feedback) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _drivers_feedback __drivers_feedback)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drivers_feedback
   (&rest __drivers_feedback)
   (if (keywordp (car __drivers_feedback))
       (send* _drivers_feedback __drivers_feedback)
     (progn
       (if __drivers_feedback (setq _drivers_feedback (car __drivers_feedback)))
       _drivers_feedback)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; puma_motor_msgs/Feedback[] _drivers_feedback
    (apply #'+ (send-all _drivers_feedback :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; puma_motor_msgs/Feedback[] _drivers_feedback
     (write-long (length _drivers_feedback) s)
     (dolist (elem _drivers_feedback)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; puma_motor_msgs/Feedback[] _drivers_feedback
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drivers_feedback (let (r) (dotimes (i n) (push (instance puma_motor_msgs::Feedback :init) r)) r))
     (dolist (elem- _drivers_feedback)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get puma_motor_msgs::MultiFeedback :md5sum-) "85bac0c3867f66b345e907ea2081c354")
(setf (get puma_motor_msgs::MultiFeedback :datatype-) "puma_motor_msgs/MultiFeedback")
(setf (get puma_motor_msgs::MultiFeedback :definition-)
      "Header header

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

")



(provide :puma_motor_msgs/MultiFeedback "85bac0c3867f66b345e907ea2081c354")


