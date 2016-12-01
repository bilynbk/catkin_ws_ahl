; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude AddJoint-request.msg.html

(cl:defclass <AddJoint-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (effort_time
    :reader effort_time
    :initarg :effort_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass AddJoint-request (<AddJoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddJoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddJoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<AddJoint-request> is deprecated: use gazebo_msgs-srv:AddJoint-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AddJoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:name-val is deprecated.  Use gazebo_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'effort_time-val :lambda-list '(m))
(cl:defmethod effort_time-val ((m <AddJoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:effort_time-val is deprecated.  Use gazebo_msgs-srv:effort_time instead.")
  (effort_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddJoint-request>) ostream)
  "Serializes a message object of type '<AddJoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'effort_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddJoint-request>) istream)
  "Deserializes a message object of type '<AddJoint-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'effort_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddJoint-request>)))
  "Returns string type for a service object of type '<AddJoint-request>"
  "gazebo_msgs/AddJointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddJoint-request)))
  "Returns string type for a service object of type 'AddJoint-request"
  "gazebo_msgs/AddJointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddJoint-request>)))
  "Returns md5sum for a message object of type '<AddJoint-request>"
  "368cf94519744310de8602f5f382c43f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddJoint-request)))
  "Returns md5sum for a message object of type 'AddJoint-request"
  "368cf94519744310de8602f5f382c43f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddJoint-request>)))
  "Returns full string definition for message of type '<AddJoint-request>"
  (cl:format cl:nil "string name~%float64 effort_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddJoint-request)))
  "Returns full string definition for message of type 'AddJoint-request"
  (cl:format cl:nil "string name~%float64 effort_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddJoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddJoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddJoint-request
    (cl:cons ':name (name msg))
    (cl:cons ':effort_time (effort_time msg))
))
;//! \htmlinclude AddJoint-response.msg.html

(cl:defclass <AddJoint-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddJoint-response (<AddJoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddJoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddJoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<AddJoint-response> is deprecated: use gazebo_msgs-srv:AddJoint-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddJoint-response>) ostream)
  "Serializes a message object of type '<AddJoint-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddJoint-response>) istream)
  "Deserializes a message object of type '<AddJoint-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddJoint-response>)))
  "Returns string type for a service object of type '<AddJoint-response>"
  "gazebo_msgs/AddJointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddJoint-response)))
  "Returns string type for a service object of type 'AddJoint-response"
  "gazebo_msgs/AddJointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddJoint-response>)))
  "Returns md5sum for a message object of type '<AddJoint-response>"
  "368cf94519744310de8602f5f382c43f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddJoint-response)))
  "Returns md5sum for a message object of type 'AddJoint-response"
  "368cf94519744310de8602f5f382c43f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddJoint-response>)))
  "Returns full string definition for message of type '<AddJoint-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddJoint-response)))
  "Returns full string definition for message of type 'AddJoint-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddJoint-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddJoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddJoint-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddJoint)))
  'AddJoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddJoint)))
  'AddJoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddJoint)))
  "Returns string type for a service object of type '<AddJoint>"
  "gazebo_msgs/AddJoint")