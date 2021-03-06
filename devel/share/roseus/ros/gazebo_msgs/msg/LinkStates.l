;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::LinkStates)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'LinkStates (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::LINKSTATES")
  (make-package "GAZEBO_MSGS::LINKSTATES"))

(in-package "ROS")
;;//! \htmlinclude LinkStates.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gazebo_msgs::LinkStates
  :super ros::object
  :slots (_name _pose _twist _reference_frame ))

(defmethod gazebo_msgs::LinkStates
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:twist __twist) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Twist :init) r)) r))
    ((:reference_frame __reference_frame) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name __name)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _reference_frame __reference_frame)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:reference_frame
   (&optional __reference_frame)
   (if __reference_frame (setq _reference_frame __reference_frame)) _reference_frame)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; geometry_msgs/Pose[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ;; geometry_msgs/Twist[] _twist
    (apply #'+ (send-all _twist :serialization-length)) 4
    ;; string[] _reference_frame
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reference_frame)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Twist[] _twist
     (write-long (length _twist) s)
     (dolist (elem _twist)
       (send elem :serialize s)
       )
     ;; string[] _reference_frame
     (write-long (length _reference_frame) s)
     (dolist (elem _reference_frame)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Twist[] _twist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _twist (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _twist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _reference_frame
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reference_frame (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _reference_frame i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get gazebo_msgs::LinkStates :md5sum-) "9f3d212eca7362a72fb139ee626dafed")
(setf (get gazebo_msgs::LinkStates :datatype-) "gazebo_msgs/LinkStates")
(setf (get gazebo_msgs::LinkStates :definition-)
      "# broadcast all link states in world frame
string[] name                 # link names
geometry_msgs/Pose[] pose     # desired pose in world frame
geometry_msgs/Twist[] twist   # desired twist in world frame
string[] reference_frame
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 

float64 x
float64 y
float64 z
")



(provide :gazebo_msgs/LinkStates "9f3d212eca7362a72fb139ee626dafed")


