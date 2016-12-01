;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::AddJoint)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'AddJoint (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::ADDJOINT")
  (make-package "GAZEBO_MSGS::ADDJOINT"))
(unless (find-package "GAZEBO_MSGS::ADDJOINTREQUEST")
  (make-package "GAZEBO_MSGS::ADDJOINTREQUEST"))
(unless (find-package "GAZEBO_MSGS::ADDJOINTRESPONSE")
  (make-package "GAZEBO_MSGS::ADDJOINTRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::AddJointRequest
  :super ros::object
  :slots (_name _effort_time ))

(defmethod gazebo_msgs::AddJointRequest
  (:init
   (&key
    ((:name __name) "")
    ((:effort_time __effort_time) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _effort_time (float __effort_time))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:effort_time
   (&optional __effort_time)
   (if __effort_time (setq _effort_time __effort_time)) _effort_time)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _effort_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _effort_time
       (sys::poke _effort_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _effort_time
     (setq _effort_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass gazebo_msgs::AddJointResponse
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::AddJointResponse
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

(defclass gazebo_msgs::AddJoint
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::AddJoint :md5sum-) "368cf94519744310de8602f5f382c43f")
(setf (get gazebo_msgs::AddJoint :datatype-) "gazebo_msgs/AddJoint")
(setf (get gazebo_msgs::AddJoint :request) gazebo_msgs::AddJointRequest)
(setf (get gazebo_msgs::AddJoint :response) gazebo_msgs::AddJointResponse)

(defmethod gazebo_msgs::AddJointRequest
  (:response () (instance gazebo_msgs::AddJointResponse :init)))

(setf (get gazebo_msgs::AddJointRequest :md5sum-) "368cf94519744310de8602f5f382c43f")
(setf (get gazebo_msgs::AddJointRequest :datatype-) "gazebo_msgs/AddJointRequest")
(setf (get gazebo_msgs::AddJointRequest :definition-)
      "string name
float64 effort_time
---

")

(setf (get gazebo_msgs::AddJointResponse :md5sum-) "368cf94519744310de8602f5f382c43f")
(setf (get gazebo_msgs::AddJointResponse :datatype-) "gazebo_msgs/AddJointResponse")
(setf (get gazebo_msgs::AddJointResponse :definition-)
      "string name
float64 effort_time
---

")



(provide :gazebo_msgs/AddJoint "368cf94519744310de8602f5f382c43f")


