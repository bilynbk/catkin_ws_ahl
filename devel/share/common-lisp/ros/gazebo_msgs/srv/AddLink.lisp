; Auto-generated. Do not edit!


(cl:in-package gazebo_msgs-srv)


;//! \htmlinclude AddLink-request.msg.html

(cl:defclass <AddLink-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (reference_frame
    :reader reference_frame
    :initarg :reference_frame
    :type cl:string
    :initform ""))
)

(cl:defclass AddLink-request (<AddLink-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLink-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLink-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<AddLink-request> is deprecated: use gazebo_msgs-srv:AddLink-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AddLink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:name-val is deprecated.  Use gazebo_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'reference_frame-val :lambda-list '(m))
(cl:defmethod reference_frame-val ((m <AddLink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_msgs-srv:reference_frame-val is deprecated.  Use gazebo_msgs-srv:reference_frame instead.")
  (reference_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLink-request>) ostream)
  "Serializes a message object of type '<AddLink-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLink-request>) istream)
  "Deserializes a message object of type '<AddLink-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLink-request>)))
  "Returns string type for a service object of type '<AddLink-request>"
  "gazebo_msgs/AddLinkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLink-request)))
  "Returns string type for a service object of type 'AddLink-request"
  "gazebo_msgs/AddLinkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLink-request>)))
  "Returns md5sum for a message object of type '<AddLink-request>"
  "ec8df5ac806767963e931886ff3d220b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLink-request)))
  "Returns md5sum for a message object of type 'AddLink-request"
  "ec8df5ac806767963e931886ff3d220b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLink-request>)))
  "Returns full string definition for message of type '<AddLink-request>"
  (cl:format cl:nil "string name~%string reference_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLink-request)))
  "Returns full string definition for message of type 'AddLink-request"
  (cl:format cl:nil "string name~%string reference_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLink-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'reference_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLink-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLink-request
    (cl:cons ':name (name msg))
    (cl:cons ':reference_frame (reference_frame msg))
))
;//! \htmlinclude AddLink-response.msg.html

(cl:defclass <AddLink-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddLink-response (<AddLink-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLink-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLink-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_msgs-srv:<AddLink-response> is deprecated: use gazebo_msgs-srv:AddLink-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLink-response>) ostream)
  "Serializes a message object of type '<AddLink-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLink-response>) istream)
  "Deserializes a message object of type '<AddLink-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLink-response>)))
  "Returns string type for a service object of type '<AddLink-response>"
  "gazebo_msgs/AddLinkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLink-response)))
  "Returns string type for a service object of type 'AddLink-response"
  "gazebo_msgs/AddLinkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLink-response>)))
  "Returns md5sum for a message object of type '<AddLink-response>"
  "ec8df5ac806767963e931886ff3d220b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLink-response)))
  "Returns md5sum for a message object of type 'AddLink-response"
  "ec8df5ac806767963e931886ff3d220b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLink-response>)))
  "Returns full string definition for message of type '<AddLink-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLink-response)))
  "Returns full string definition for message of type 'AddLink-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLink-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLink-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLink-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddLink)))
  'AddLink-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddLink)))
  'AddLink-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLink)))
  "Returns string type for a service object of type '<AddLink>"
  "gazebo_msgs/AddLink")