; Auto-generated. Do not edit!


(cl:in-package chess-msg)


;//! \htmlinclude Chesspiece.msg.html

(cl:defclass <Chesspiece> (roslisp-msg-protocol:ros-message)
  ((player
    :reader player
    :initarg :player
    :type chess-msg:Player
    :initform (cl:make-instance 'chess-msg:Player))
   (kind
    :reader kind
    :initarg :kind
    :type cl:string
    :initform ""))
)

(cl:defclass Chesspiece (<Chesspiece>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Chesspiece>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Chesspiece)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chess-msg:<Chesspiece> is deprecated: use chess-msg:Chesspiece instead.")))

(cl:ensure-generic-function 'player-val :lambda-list '(m))
(cl:defmethod player-val ((m <Chesspiece>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:player-val is deprecated.  Use chess-msg:player instead.")
  (player m))

(cl:ensure-generic-function 'kind-val :lambda-list '(m))
(cl:defmethod kind-val ((m <Chesspiece>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:kind-val is deprecated.  Use chess-msg:kind instead.")
  (kind m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Chesspiece>)))
    "Constants for message type '<Chesspiece>"
  '((:KING . k)
    (:QUEEN . q)
    (:ROOK . r)
    (:KNIGHT . n)
    (:BISHOP . b)
    (:PAWN . p)
    (:EMPTY . ))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Chesspiece)))
    "Constants for message type 'Chesspiece"
  '((:KING . k)
    (:QUEEN . q)
    (:ROOK . r)
    (:KNIGHT . n)
    (:BISHOP . b)
    (:PAWN . p)
    (:EMPTY . ))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Chesspiece>) ostream)
  "Serializes a message object of type '<Chesspiece>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'player) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kind))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kind))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Chesspiece>) istream)
  "Deserializes a message object of type '<Chesspiece>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'player) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kind) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kind) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Chesspiece>)))
  "Returns string type for a message object of type '<Chesspiece>"
  "chess/Chesspiece")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Chesspiece)))
  "Returns string type for a message object of type 'Chesspiece"
  "chess/Chesspiece")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Chesspiece>)))
  "Returns md5sum for a message object of type '<Chesspiece>"
  "307c05ea07e91a96fc14a8ccf97033ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Chesspiece)))
  "Returns md5sum for a message object of type 'Chesspiece"
  "307c05ea07e91a96fc14a8ccf97033ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Chesspiece>)))
  "Returns full string definition for message of type '<Chesspiece>"
  (cl:format cl:nil "string KING=k~%string QUEEN=q~%string ROOK=r~%string KNIGHT=n~%string BISHOP=b~%string PAWN=p~%string EMPTY=~%~%chess/Player player~%string kind~%~%================================================================================~%MSG: chess/Player~%uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Chesspiece)))
  "Returns full string definition for message of type 'Chesspiece"
  (cl:format cl:nil "string KING=k~%string QUEEN=q~%string ROOK=r~%string KNIGHT=n~%string BISHOP=b~%string PAWN=p~%string EMPTY=~%~%chess/Player player~%string kind~%~%================================================================================~%MSG: chess/Player~%uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Chesspiece>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'player))
     4 (cl:length (cl:slot-value msg 'kind))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Chesspiece>))
  "Converts a ROS message object to a list"
  (cl:list 'Chesspiece
    (cl:cons ':player (player msg))
    (cl:cons ':kind (kind msg))
))
