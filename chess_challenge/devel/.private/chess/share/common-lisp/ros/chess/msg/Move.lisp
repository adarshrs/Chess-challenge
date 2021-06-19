; Auto-generated. Do not edit!


(cl:in-package chess-msg)


;//! \htmlinclude Move.msg.html

(cl:defclass <Move> (roslisp-msg-protocol:ros-message)
  ((src_row
    :reader src_row
    :initarg :src_row
    :type cl:fixnum
    :initform 0)
   (src_col
    :reader src_col
    :initarg :src_col
    :type cl:fixnum
    :initform 0)
   (dst_row
    :reader dst_row
    :initarg :dst_row
    :type cl:fixnum
    :initform 0)
   (dst_col
    :reader dst_col
    :initarg :dst_col
    :type cl:fixnum
    :initform 0)
   (is_castling
    :reader is_castling
    :initarg :is_castling
    :type cl:boolean
    :initform cl:nil)
   (is_promotion
    :reader is_promotion
    :initarg :is_promotion
    :type cl:boolean
    :initform cl:nil)
   (piece
    :reader piece
    :initarg :piece
    :type chess-msg:Chesspiece
    :initform (cl:make-instance 'chess-msg:Chesspiece)))
)

(cl:defclass Move (<Move>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chess-msg:<Move> is deprecated: use chess-msg:Move instead.")))

(cl:ensure-generic-function 'src_row-val :lambda-list '(m))
(cl:defmethod src_row-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:src_row-val is deprecated.  Use chess-msg:src_row instead.")
  (src_row m))

(cl:ensure-generic-function 'src_col-val :lambda-list '(m))
(cl:defmethod src_col-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:src_col-val is deprecated.  Use chess-msg:src_col instead.")
  (src_col m))

(cl:ensure-generic-function 'dst_row-val :lambda-list '(m))
(cl:defmethod dst_row-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:dst_row-val is deprecated.  Use chess-msg:dst_row instead.")
  (dst_row m))

(cl:ensure-generic-function 'dst_col-val :lambda-list '(m))
(cl:defmethod dst_col-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:dst_col-val is deprecated.  Use chess-msg:dst_col instead.")
  (dst_col m))

(cl:ensure-generic-function 'is_castling-val :lambda-list '(m))
(cl:defmethod is_castling-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:is_castling-val is deprecated.  Use chess-msg:is_castling instead.")
  (is_castling m))

(cl:ensure-generic-function 'is_promotion-val :lambda-list '(m))
(cl:defmethod is_promotion-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:is_promotion-val is deprecated.  Use chess-msg:is_promotion instead.")
  (is_promotion m))

(cl:ensure-generic-function 'piece-val :lambda-list '(m))
(cl:defmethod piece-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:piece-val is deprecated.  Use chess-msg:piece instead.")
  (piece m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move>) ostream)
  "Serializes a message object of type '<Move>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src_row)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src_col)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dst_row)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dst_col)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_castling) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_promotion) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'piece) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move>) istream)
  "Deserializes a message object of type '<Move>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src_row)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src_col)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dst_row)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dst_col)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_castling) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_promotion) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'piece) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move>)))
  "Returns string type for a message object of type '<Move>"
  "chess/Move")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move)))
  "Returns string type for a message object of type 'Move"
  "chess/Move")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move>)))
  "Returns md5sum for a message object of type '<Move>"
  "3eaabe5968b4df351a2b07f580e25456")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move)))
  "Returns md5sum for a message object of type 'Move"
  "3eaabe5968b4df351a2b07f580e25456")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move>)))
  "Returns full string definition for message of type '<Move>"
  (cl:format cl:nil "uint8 src_row  # 1 to 8~%uint8 src_col  # 1 (a) to 8 (h)~%uint8 dst_row  # 1 to 8~%uint8 dst_col  # 1 (a) to 8 (h)~%~%# See: https://en.wikipedia.org/wiki/Castling~%bool is_castling~%~%# Note: The piece may only change if a promotion occurs~%# See: https://en.wikipedia.org/wiki/Promotion_(chess)~%bool is_promotion~%chess/Chesspiece piece~%~%================================================================================~%MSG: chess/Chesspiece~%string KING=k~%string QUEEN=q~%string ROOK=r~%string KNIGHT=n~%string BISHOP=b~%string PAWN=p~%string EMPTY=~%~%chess/Player player~%string kind~%~%================================================================================~%MSG: chess/Player~%uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move)))
  "Returns full string definition for message of type 'Move"
  (cl:format cl:nil "uint8 src_row  # 1 to 8~%uint8 src_col  # 1 (a) to 8 (h)~%uint8 dst_row  # 1 to 8~%uint8 dst_col  # 1 (a) to 8 (h)~%~%# See: https://en.wikipedia.org/wiki/Castling~%bool is_castling~%~%# Note: The piece may only change if a promotion occurs~%# See: https://en.wikipedia.org/wiki/Promotion_(chess)~%bool is_promotion~%chess/Chesspiece piece~%~%================================================================================~%MSG: chess/Chesspiece~%string KING=k~%string QUEEN=q~%string ROOK=r~%string KNIGHT=n~%string BISHOP=b~%string PAWN=p~%string EMPTY=~%~%chess/Player player~%string kind~%~%================================================================================~%MSG: chess/Player~%uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'piece))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move>))
  "Converts a ROS message object to a list"
  (cl:list 'Move
    (cl:cons ':src_row (src_row msg))
    (cl:cons ':src_col (src_col msg))
    (cl:cons ':dst_row (dst_row msg))
    (cl:cons ':dst_col (dst_col msg))
    (cl:cons ':is_castling (is_castling msg))
    (cl:cons ':is_promotion (is_promotion msg))
    (cl:cons ':piece (piece msg))
))
