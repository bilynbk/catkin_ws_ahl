;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::JointStates)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'JointStates (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::JOINTSTATES")
  (make-package "GAZEBO_MSGS::JOINTSTATES"))

(in-package "ROS")
;;//! \htmlinclude JointStates.msg.html


(defclass gazebo_msgs::JointStates
  :super ros::object
  :slots (_name _q _dq ))

(defmethod gazebo_msgs::JointStates
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dq __dq) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name __name)
   (setq _q __q)
   (setq _dq __dq)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:dq
   (&optional __dq)
   (if __dq (setq _dq __dq)) _dq)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _q
    (* 8    (length _q)) 4
    ;; float64[] _dq
    (* 8    (length _dq)) 4
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
     ;; float64[] _q
     (write-long (length _q) s)
     (dotimes (i (length _q))
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dq
     (write-long (length _dq) s)
     (dotimes (i (length _dq))
       (sys::poke (elt _dq i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _q
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dq
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dq (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dq i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gazebo_msgs::JointStates :md5sum-) "98d3fb539b1a35fa74c9a1757aaed0bb")
(setf (get gazebo_msgs::JointStates :datatype-) "gazebo_msgs/JointStates")
(setf (get gazebo_msgs::JointStates :definition-)
      "# broadcast all joint states in world frame
string[] name                   # joint names
float64[] q                     # generalized coordinates
float64[] dq                    # velocity of q

")



(provide :gazebo_msgs/JointStates "98d3fb539b1a35fa74c9a1757aaed0bb")


