;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::StartTimer)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'StartTimer (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::STARTTIMER")
  (make-package "GAZEBO_MSGS::STARTTIMER"))
(unless (find-package "GAZEBO_MSGS::STARTTIMERREQUEST")
  (make-package "GAZEBO_MSGS::STARTTIMERREQUEST"))
(unless (find-package "GAZEBO_MSGS::STARTTIMERRESPONSE")
  (make-package "GAZEBO_MSGS::STARTTIMERRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::StartTimerRequest
  :super ros::object
  :slots (_duration_write_joint_states _duration_update_link_states _duration_read_joint_efforts _duration_write_forces ))

(defmethod gazebo_msgs::StartTimerRequest
  (:init
   (&key
    ((:duration_write_joint_states __duration_write_joint_states) 0.0)
    ((:duration_update_link_states __duration_update_link_states) 0.0)
    ((:duration_read_joint_efforts __duration_read_joint_efforts) 0.0)
    ((:duration_write_forces __duration_write_forces) 0.0)
    )
   (send-super :init)
   (setq _duration_write_joint_states (float __duration_write_joint_states))
   (setq _duration_update_link_states (float __duration_update_link_states))
   (setq _duration_read_joint_efforts (float __duration_read_joint_efforts))
   (setq _duration_write_forces (float __duration_write_forces))
   self)
  (:duration_write_joint_states
   (&optional __duration_write_joint_states)
   (if __duration_write_joint_states (setq _duration_write_joint_states __duration_write_joint_states)) _duration_write_joint_states)
  (:duration_update_link_states
   (&optional __duration_update_link_states)
   (if __duration_update_link_states (setq _duration_update_link_states __duration_update_link_states)) _duration_update_link_states)
  (:duration_read_joint_efforts
   (&optional __duration_read_joint_efforts)
   (if __duration_read_joint_efforts (setq _duration_read_joint_efforts __duration_read_joint_efforts)) _duration_read_joint_efforts)
  (:duration_write_forces
   (&optional __duration_write_forces)
   (if __duration_write_forces (setq _duration_write_forces __duration_write_forces)) _duration_write_forces)
  (:serialization-length
   ()
   (+
    ;; float64 _duration_write_joint_states
    8
    ;; float64 _duration_update_link_states
    8
    ;; float64 _duration_read_joint_efforts
    8
    ;; float64 _duration_write_forces
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _duration_write_joint_states
       (sys::poke _duration_write_joint_states (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_update_link_states
       (sys::poke _duration_update_link_states (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_read_joint_efforts
       (sys::poke _duration_read_joint_efforts (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_write_forces
       (sys::poke _duration_write_forces (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _duration_write_joint_states
     (setq _duration_write_joint_states (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_update_link_states
     (setq _duration_update_link_states (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_read_joint_efforts
     (setq _duration_read_joint_efforts (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_write_forces
     (setq _duration_write_forces (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass gazebo_msgs::StartTimerResponse
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::StartTimerResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass gazebo_msgs::StartTimer
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::StartTimer :md5sum-) "8ff7d44c34992c271801e5f640dcfa8d")
(setf (get gazebo_msgs::StartTimer :datatype-) "gazebo_msgs/StartTimer")
(setf (get gazebo_msgs::StartTimer :request) gazebo_msgs::StartTimerRequest)
(setf (get gazebo_msgs::StartTimer :response) gazebo_msgs::StartTimerResponse)

(defmethod gazebo_msgs::StartTimerRequest
  (:response () (instance gazebo_msgs::StartTimerResponse :init)))

(setf (get gazebo_msgs::StartTimerRequest :md5sum-) "8ff7d44c34992c271801e5f640dcfa8d")
(setf (get gazebo_msgs::StartTimerRequest :datatype-) "gazebo_msgs/StartTimerRequest")
(setf (get gazebo_msgs::StartTimerRequest :definition-)
      "float64 duration_write_joint_states
float64 duration_update_link_states
float64 duration_read_joint_efforts
float64 duration_write_forces
---
")

(setf (get gazebo_msgs::StartTimerResponse :md5sum-) "8ff7d44c34992c271801e5f640dcfa8d")
(setf (get gazebo_msgs::StartTimerResponse :datatype-) "gazebo_msgs/StartTimerResponse")
(setf (get gazebo_msgs::StartTimerResponse :definition-)
      "float64 duration_write_joint_states
float64 duration_update_link_states
float64 duration_read_joint_efforts
float64 duration_write_forces
---
")



(provide :gazebo_msgs/StartTimer "8ff7d44c34992c271801e5f640dcfa8d")


