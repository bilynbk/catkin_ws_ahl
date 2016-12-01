;; Auto-generated. Do not edit!


(when (boundp 'gazebo_msgs::ApplyJointEfforts)
  (if (not (find-package "GAZEBO_MSGS"))
    (make-package "GAZEBO_MSGS"))
  (shadow 'ApplyJointEfforts (find-package "GAZEBO_MSGS")))
(unless (find-package "GAZEBO_MSGS::APPLYJOINTEFFORTS")
  (make-package "GAZEBO_MSGS::APPLYJOINTEFFORTS"))

(in-package "ROS")
;;//! \htmlinclude ApplyJointEfforts.msg.html


(defclass gazebo_msgs::ApplyJointEfforts
  :super ros::object
  :slots (_name _effort _start_time _duration ))

(defmethod gazebo_msgs::ApplyJointEfforts
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:start_time __start_time) (instance ros::time :init))
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _name __name)
   (setq _effort __effort)
   (setq _start_time __start_time)
   (setq _duration __duration)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; time _start_time
    8
    ;; duration _duration
    8
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
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; time _start_time
       (write-long (send _start_time :sec) s) (write-long (send _start_time :nsec) s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
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
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; time _start_time
     (send _start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gazebo_msgs::ApplyJointEfforts :md5sum-) "cabae2e7185416ca7de6918589d2983f")
(setf (get gazebo_msgs::ApplyJointEfforts :datatype-) "gazebo_msgs/ApplyJointEfforts")
(setf (get gazebo_msgs::ApplyJointEfforts :definition-)
      "# set urdf joint effort
string[] name               # joint to apply wrench (linear force and torque)
float64[] effort            # effort to apply
time start_time             # optional wrench application start time (seconds)
                            # if start_time < current time, start as soon as possible
duration duration           # optional duration of wrench application time (seconds)
                            # if duration < 0, apply wrench continuously without end
                            # if duration = 0, do nothing
                            # if duration < step size, assume step size and
                            #               display warning in status_message

")



(provide :gazebo_msgs/ApplyJointEfforts "cabae2e7185416ca7de6918589d2983f")


