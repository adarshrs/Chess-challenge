; Auto-generated. Do not edit!


(cl:in-package chess-msg)


;//! \htmlinclude Chessboard.msg.html

(cl:defclass <Chessboard> (roslisp-msg-protocol:ros-message)
  ((squares
    :reader squares
    :initarg :squares
    :type (cl:vector chess-msg:Chesspiece)
   :initform (cl:make-array 64 :element-type 'chess-msg:Chesspiece :initial-element (cl:make-instance 'chess-msg:Chesspiece))))
)

(cl:defclass Chessboard (<Chessboard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Chessboard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Chessboard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chess-msg:<Chessboard> is deprecated: use chess-msg:Chessboard instead.")))

(cl:ensure-generic-function 'squares-val :lambda-list '(m))
(cl:defmethod squares-val ((m <Chessboard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chess-msg:squares-val is deprecated.  Use chess-msg:squares instead.")
  (squares m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Chessboard>) ostream)
  "Serializes a message object of type '<Chessboard>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'squares))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Chessboard>) istream)
  "Deserializes a message object of type '<Chessboard>"
  (cl:setf (cl:slot-value msg 'squares) (cl:make-array 64))
  (cl:let ((vals (cl:slot-value msg 'squares)))
    (cl:dotimes (i 64)
    (cl:setf (cl:aref vals i) (cl:make-instance 'chess-msg:Chesspiece))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Chessboard>)))
  "Returns string type for a message object of type '<Chessboard>"
  "chess/Chessboard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Chessboard)))
  "Returns string type for a message object of type 'Chessboard"
  "chess/Chessboard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Chessboard>)))
  "Returns md5sum for a message object of type '<Chessboard>"
  "f9b8a96936f1ecbd729fc4d2fa9fe3ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Chessboard)))
  "Returns md5sum for a message object of type 'Chessboard"
  "f9b8a96936f1ecbd729fc4d2fa9fe3ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Chessboard>)))
  "Returns full string definition for message of type '<Chessboard>"
  (cl:format cl:nil "chess/Chesspiece[64] squares~%~%================================================================================~%MSG: chess/Chesspiece~%string KING=k~%string QUEEN=q~%string ROOK=r~%string KNIGHT=n~%string BISHOP=b~%string PAWN=p~%string EMPTY=~%~%chess/Player player~%string kind~%~%================================================================================~%MSG: chess/Player~%uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Chessboard)))
  "Returns full string definition for message of type 'Chessboard"
  (cl:format cl:nil "chess/Chesspiece[64] squares~%~%================================================================================~%MSG: chess/Chesspiece~%string KING=k~%string QUEEN=q~%string ROOK=r~%string KNIGHT=n~%string BISHOP=b~%string PAWN=p~%string EMPTY=~%~%chess/Player player~%string kind~%~%================================================================================~%MSG: chess/Player~%uint8 WHITE=0~%uint8 BLACK=1~%~%uint8 id  # one of the two options above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Chessboard>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'squares) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Chessboard>))
  "Converts a ROS message object to a list"
  (cl:list 'Chessboard
    (cl:cons ':squares (squares msg))
))
