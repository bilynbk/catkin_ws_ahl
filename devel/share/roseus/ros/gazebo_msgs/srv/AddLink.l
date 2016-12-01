;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::AddLink)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'AddLink (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::ADDLINK")
  (make-package "GAZEBO_MSGS::ADDLINK"))
(unless (find-package "GAZEBO_MSGS::ADDLINKREQUEST")
  (make-package "GAZEBO_MSGS::ADDLINKREQUEST"))
(unless (find-package "GAZEBO_MSGS::ADDLINKRESPONSE")
  (make-package "GAZEBO_MSGS::ADDLINKRESPONSE"))

(in-package "ROS")





(defclass gazebo_msgs::AddLinkRequest
  :super ros::object
  :slots (_name _reference_frame ))

(defmethod gazebo_msgs::AddLinkRequest
  (:init
   (&key
    ((:name __name) "")
    ((:reference_frame __reference_frame) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _reference_frame (string __reference_frame))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:reference_frame
   (&optional __reference_frame)
   (if __reference_frame (setq _reference_frame __reference_frame)) _reference_frame)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _reference_frame
    4 (length _reference_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _reference_frame
       (write-long (length _reference_frame) s) (princ _reference_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reference_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_msgs::AddLinkResponse
  :super ros::object
  :slots ())

(defmethod gazebo_msgs::AddLinkResponse
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

(defclass gazebo_msgs::AddLink
  :super ros::object
  :slots ())

(setf (get gazebo_msgs::AddLink :md5sum-) "ec8df5ac806767963e931886ff3d220b")
(setf (get gazebo_msgs::AddLink :datatype-) "gazebo_msgs/AddLink")
(setf (get gazebo_msgs::AddLink :request) gazebo_msgs::AddLinkRequest)
(setf (get gazebo_msgs::AddLink :response) gazebo_msgs::AddLinkResponse)

(defmethod gazebo_msgs::AddLinkRequest
  (:response () (instance gazebo_msgs::AddLinkResponse :init)))

(setf (get gazebo_msgs::AddLinkRequest :md5sum-) "ec8df5ac806767963e931886ff3d220b")
(setf (get gazebo_msgs::AddLinkRequest :datatype-) "gazebo_msgs/AddLinkRequest")
(setf (get gazebo_msgs::AddLinkRequest :definition-)
      "string name
string reference_frame
---
")

(setf (get gazebo_msgs::AddLinkResponse :md5sum-) "ec8df5ac806767963e931886ff3d220b")
(setf (get gazebo_msgs::AddLinkResponse :datatype-) "gazebo_msgs/AddLinkResponse")
(setf (get gazebo_msgs::AddLinkResponse :definition-)
      "string name
string reference_frame
---
")



(provide :gazebo_msgs/AddLink "ec8df5ac806767963e931886ff3d220b")


