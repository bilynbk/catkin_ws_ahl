;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::AddForceSensor)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'AddForceSensor (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::ADDFORCESENSOR")
  (make-package "GAZEBO_MSGS::ADDFORCESENSOR"))
(unless (find-package "GAZEBO_MSGS::ADDFORCESENSORREQUEST")
  (make-package "GAZEBO_MSGS::ADDFORCESENSORREQUEST"))
(unless (find-package "GAZEBO_MSGS::ADDFORCESENSORRESPONSE")
  (make-package "GAZEBO_MSGS::ADDFORCESENSORRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::AddForceSensorRequest
  :super ros::object
  :slots (_joint_name _sensor_name ))

(defmethod gazebo_msgs::AddForceSensorRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:sensor_name __sensor_name) "")
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _sensor_name (string __sensor_name))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:sensor_name
   (&optional __sensor_name)
   (if __sensor_name (setq _sensor_name __sensor_name)) _sensor_name)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; string _sensor_name
    4 (length _sensor_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; string _sensor_name
       (write-long (length _sensor_name) s) (princ _sensor_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sensor_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::AddForceSensorResponse
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::AddForceSensorResponse
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

(defclass gazebo_msgs::AddForceSensor
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::AddForceSensor :md5sum-) "925708c6a561d87c6886f8b30afab5d6")
(setf (get gazebo_msgs::AddForceSensor :datatype-) "gazebo_msgs/AddForceSensor")
(setf (get gazebo_msgs::AddForceSensor :request) gazebo_msgs::AddForceSensorRequest)
(setf (get gazebo_msgs::AddForceSensor :response) gazebo_msgs::AddForceSensorResponse)

(defmethod gazebo_msgs::AddForceSensorRequest
  (:response () (instance gazebo_msgs::AddForceSensorResponse :init)))

(setf (get gazebo_msgs::AddForceSensorRequest :md5sum-) "925708c6a561d87c6886f8b30afab5d6")
(setf (get gazebo_msgs::AddForceSensorRequest :datatype-) "gazebo_msgs/AddForceSensorRequest")
(setf (get gazebo_msgs::AddForceSensorRequest :definition-)
      "string joint_name
string sensor_name
---
")

(setf (get gazebo_msgs::AddForceSensorResponse :md5sum-) "925708c6a561d87c6886f8b30afab5d6")
(setf (get gazebo_msgs::AddForceSensorResponse :datatype-) "gazebo_msgs/AddForceSensorResponse")
(setf (get gazebo_msgs::AddForceSensorResponse :definition-)
      "string joint_name
string sensor_name
---
")



(provide :gazebo_msgs/AddForceSensor "925708c6a561d87c6886f8b30afab5d6")


