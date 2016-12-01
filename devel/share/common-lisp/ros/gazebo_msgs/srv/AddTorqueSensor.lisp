; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude AddTorqueSensor-request.msg.html

(cl:defclass <AddTorqueSensor-request> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (sensor_name
    :reader sensor_name
    :initarg :sensor_name
    :type cl:string
    :initform ""))
)

(cl:defclass AddTorqueSensor-request (<AddTorqueSensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTorqueSensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTorqueSensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<AddTorqueSensor-request> is deprecated: use gazebo_msgs-srv:AddTorqueSensor-request instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <AddTorqueSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:joint_name-val is deprecated.  Use gazebo_msgs-srv:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'sensor_name-val :lambda-list '(m))
(cl:defmethod sensor_name-val ((m <AddTorqueSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:sensor_name-val is deprecated.  Use gazebo_msgs-srv:sensor_name instead.")
  (sensor_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTorqueSensor-request>) ostream)
  "Serializes a message object of type '<AddTorqueSensor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTorqueSensor-request>) istream)
  "Deserializes a message object of type '<AddTorqueSensor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTorqueSensor-request>)))
  "Returns string type for a service object of type '<AddTorqueSensor-request>"
  "gazebo_msgs/AddTorqueSensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTorqueSensor-request)))
  "Returns string type for a service object of type 'AddTorqueSensor-request"
  "gazebo_msgs/AddTorqueSensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTorqueSensor-request>)))
  "Returns md5sum for a message object of type '<AddTorqueSensor-request>"
  "925708c6a561d87c6886f8b30afab5d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTorqueSensor-request)))
  "Returns md5sum for a message object of type 'AddTorqueSensor-request"
  "925708c6a561d87c6886f8b30afab5d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTorqueSensor-request>)))
  "Returns full string definition for message of type '<AddTorqueSensor-request>"
  (cl:format cl:nil "string joint_name~%string sensor_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTorqueSensor-request)))
  "Returns full string definition for message of type 'AddTorqueSensor-request"
  (cl:format cl:nil "string joint_name~%string sensor_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTorqueSensor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     4 (cl:length (cl:slot-value msg 'sensor_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTorqueSensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTorqueSensor-request
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':sensor_name (sensor_name msg))
))
;//! \htmlinclude AddTorqueSensor-response.msg.html

(cl:defclass <AddTorqueSensor-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddTorqueSensor-response (<AddTorqueSensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTorqueSensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTorqueSensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<AddTorqueSensor-response> is deprecated: use gazebo_msgs-srv:AddTorqueSensor-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTorqueSensor-response>) ostream)
  "Serializes a message object of type '<AddTorqueSensor-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTorqueSensor-response>) istream)
  "Deserializes a message object of type '<AddTorqueSensor-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTorqueSensor-response>)))
  "Returns string type for a service object of type '<AddTorqueSensor-response>"
  "gazebo_msgs/AddTorqueSensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTorqueSensor-response)))
  "Returns string type for a service object of type 'AddTorqueSensor-response"
  "gazebo_msgs/AddTorqueSensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTorqueSensor-response>)))
  "Returns md5sum for a message object of type '<AddTorqueSensor-response>"
  "925708c6a561d87c6886f8b30afab5d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTorqueSensor-response)))
  "Returns md5sum for a message object of type 'AddTorqueSensor-response"
  "925708c6a561d87c6886f8b30afab5d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTorqueSensor-response>)))
  "Returns full string definition for message of type '<AddTorqueSensor-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTorqueSensor-response)))
  "Returns full string definition for message of type 'AddTorqueSensor-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTorqueSensor-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTorqueSensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTorqueSensor-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTorqueSensor)))
  'AddTorqueSensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTorqueSensor)))
  'AddTorqueSensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTorqueSensor)))
  "Returns string type for a service object of type '<AddTorqueSensor>"
  "gazebo_msgs/AddTorqueSensor")