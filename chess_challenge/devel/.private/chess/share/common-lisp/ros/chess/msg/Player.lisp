; Auto-generated. Do not edit!


(cl:in-package chess-msg)


;//! \htmlinclude Player.msg.html

(cl:defclass <Player> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Player (<Player>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Player>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Player)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chess-msg:<Player> is deprecated: use chess-msg:Player instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Player>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:id-val is deprecated.  Use chess-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Player>)))
    "Constants for message type '<Player>"
  '((:WHITE . 0)
    (:BLACK . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Player)))
    "Constants for message type 'Player"
  '((:WHITE . 0)
    (:BLACK . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Player>) ostream)
  "Serializes a message object of type '<Player>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Player>) istream)
  "Deserializes a message object of type '<Player>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Player>)))
  "Returns string type for a message object of type '<Player>"
  "chess/Player")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Player)))
  "Returns string type for a message object of type 'Player"
  "chess/Player")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Player>)))
  "Returns md5sum for a message object of type '<Player>"
  "702ce2a9d992b93a9f0e4effdd691b99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Player)))
  "Returns md5sum for a message object of type 'Player"
  "702ce2a9d992b93a9f0e4effdd691b99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Player>)))
  "Returns full string definition for message of type '<Player>"
  (cl:format cl:nil "uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Player)))
  "Returns full string definition for message of type 'Player"
  (cl:format cl:nil "uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Player>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Player>))
  "Converts a ROS message object to a list"
  (cl:list 'Player
    (cl:cons ':id (id msg))
))
