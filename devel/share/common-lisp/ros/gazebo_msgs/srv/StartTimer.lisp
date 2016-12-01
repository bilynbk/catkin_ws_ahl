; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude StartTimer-request.msg.html

(cl:defclass <StartTimer-request> (roslisp-msg-protocol:ros-message)
  ((duration_write_joint_states
    :reader duration_write_joint_states
    :initarg :duration_write_joint_states
    :type cl:float
    :initform 0.0)
   (duration_update_link_states
    :reader duration_update_link_states
    :initarg :duration_update_link_states
    :type cl:float
    :initform 0.0)
   (duration_read_joint_efforts
    :reader duration_read_joint_efforts
    :initarg :duration_read_joint_efforts
    :type cl:float
    :initform 0.0)
   (duration_write_forces
    :reader duration_write_forces
    :initarg :duration_write_forces
    :type cl:float
    :initform 0.0))
)

(cl:defclass StartTimer-request (<StartTimer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTimer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTimer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<StartTimer-request> is deprecated: use gazebo_msgs-srv:StartTimer-request instead.")))

(cl:ensure-generic-function 'duration_write_joint_states-val :lambda-list '(m))
(cl:defmethod duration_write_joint_states-val ((m <StartTimer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:duration_write_joint_states-val is deprecated.  Use gazebo_msgs-srv:duration_write_joint_states instead.")
  (duration_write_joint_states m))

(cl:ensure-generic-function 'duration_update_link_states-val :lambda-list '(m))
(cl:defmethod duration_update_link_states-val ((m <StartTimer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:duration_update_link_states-val is deprecated.  Use gazebo_msgs-srv:duration_update_link_states instead.")
  (duration_update_link_states m))

(cl:ensure-generic-function 'duration_read_joint_efforts-val :lambda-list '(m))
(cl:defmethod duration_read_joint_efforts-val ((m <StartTimer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:duration_read_joint_efforts-val is deprecated.  Use gazebo_msgs-srv:duration_read_joint_efforts instead.")
  (duration_read_joint_efforts m))

(cl:ensure-generic-function 'duration_write_forces-val :lambda-list '(m))
(cl:defmethod duration_write_forces-val ((m <StartTimer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:duration_write_forces-val is deprecated.  Use gazebo_msgs-srv:duration_write_forces instead.")
  (duration_write_forces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTimer-request>) ostream)
  "Serializes a message object of type '<StartTimer-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration_write_joint_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration_update_link_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration_read_joint_efforts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration_write_forces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTimer-request>) istream)
  "Deserializes a message object of type '<StartTimer-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration_write_joint_states) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration_update_link_states) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration_read_joint_efforts) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration_write_forces) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTimer-request>)))
  "Returns string type for a service object of type '<StartTimer-request>"
  "gazebo_msgs/StartTimerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTimer-request)))
  "Returns string type for a service object of type 'StartTimer-request"
  "gazebo_msgs/StartTimerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTimer-request>)))
  "Returns md5sum for a message object of type '<StartTimer-request>"
  "8ff7d44c34992c271801e5f640dcfa8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTimer-request)))
  "Returns md5sum for a message object of type 'StartTimer-request"
  "8ff7d44c34992c271801e5f640dcfa8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTimer-request>)))
  "Returns full string definition for message of type '<StartTimer-request>"
  (cl:format cl:nil "float64 duration_write_joint_states~%float64 duration_update_link_states~%float64 duration_read_joint_efforts~%float64 duration_write_forces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTimer-request)))
  "Returns full string definition for message of type 'StartTimer-request"
  (cl:format cl:nil "float64 duration_write_joint_states~%float64 duration_update_link_states~%float64 duration_read_joint_efforts~%float64 duration_write_forces~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTimer-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTimer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTimer-request
    (cl:cons ':duration_write_joint_states (duration_write_joint_states msg))
    (cl:cons ':duration_update_link_states (duration_update_link_states msg))
    (cl:cons ':duration_read_joint_efforts (duration_read_joint_efforts msg))
    (cl:cons ':duration_write_forces (duration_write_forces msg))
))
;//! \htmlinclude StartTimer-response.msg.html

(cl:defclass <StartTimer-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartTimer-response (<StartTimer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTimer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTimer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<StartTimer-response> is deprecated: use gazebo_msgs-srv:StartTimer-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTimer-response>) ostream)
  "Serializes a message object of type '<StartTimer-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTimer-response>) istream)
  "Deserializes a message object of type '<StartTimer-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTimer-response>)))
  "Returns string type for a service object of type '<StartTimer-response>"
  "gazebo_msgs/StartTimerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTimer-response)))
  "Returns string type for a service object of type 'StartTimer-response"
  "gazebo_msgs/StartTimerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTimer-response>)))
  "Returns md5sum for a message object of type '<StartTimer-response>"
  "8ff7d44c34992c271801e5f640dcfa8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTimer-response)))
  "Returns md5sum for a message object of type 'StartTimer-response"
  "8ff7d44c34992c271801e5f640dcfa8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTimer-response>)))
  "Returns full string definition for message of type '<StartTimer-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTimer-response)))
  "Returns full string definition for message of type 'StartTimer-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTimer-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTimer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTimer-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartTimer)))
  'StartTimer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartTimer)))
  'StartTimer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTimer)))
  "Returns string type for a service object of type '<StartTimer>"
  "gazebo_msgs/StartTimer")