;; Auto-generated. Do not edit!


(when (boundp 'chess::Chesspiece)
  (if (not (find-package "CHESS"))
    (make-package "CHESS"))
  (shadow 'Chesspiece (find-package "CHESS")))
(unless (find-package "CHESS::CHESSPIECE")
  (make-package "CHESS::CHESSPIECE"))

(in-package "ROS")
;;//! \htmlinclude Chesspiece.msg.html


(intern "*KING*" (find-package "CHESS::CHESSPIECE"))
(shadow '*KING* (find-package "CHESS::CHESSPIECE"))
(defconstant chess::Chesspiece::*KING* "k")
(intern "*QUEEN*" (find-package "CHESS::CHESSPIECE"))
(shadow '*QUEEN* (find-package "CHESS::CHESSPIECE"))
(defconstant chess::Chesspiece::*QUEEN* "q")
(intern "*ROOK*" (find-package "CHESS::CHESSPIECE"))
(shadow '*ROOK* (find-package "CHESS::CHESSPIECE"))
(defconstant chess::Chesspiece::*ROOK* "r")
(intern "*KNIGHT*" (find-package "CHESS::CHESSPIECE"))
(shadow '*KNIGHT* (find-package "CHESS::CHESSPIECE"))
(defconstant chess::Chesspiece::*KNIGHT* "n")
(intern "*BISHOP*" (find-package "CHESS::CHESSPIECE"))
(shadow '*BISHOP* (find-package "CHESS::CHESSPIECE"))
(defconstant chess::Chesspiece::*BISHOP* "b")
(intern "*PAWN*" (find-package "CHESS::CHESSPIECE"))
(shadow '*PAWN* (find-package "CHESS::CHESSPIECE"))
(defconstant chess::Chesspiece::*PAWN* "p")
(intern "*EMPTY*" (find-package "CHESS::CHESSPIECE"))
(shadow '*EMPTY* (find-package "CHESS::CHESSPIECE"))
(defconstant chess::Chesspiece::*EMPTY* "")
(defclass chess::Chesspiece
  :super ros::object
  :slots (_player _kind ))

(defmethod chess::Chesspiece
  (:init
   (&key
    ((:player __player) (instance chess::Player :init))
    ((:kind __kind) "")
    )
   (send-super :init)
   (setq _player __player)
   (setq _kind (string __kind))
   self)
  (:player
   (&rest __player)
   (if (keywordp (car __player))
       (send* _player __player)
     (progn
       (if __player (setq _player (car __player)))
       _player)))
  (:kind
   (&optional __kind)
   (if __kind (setq _kind __kind)) _kind)
  (:serialization-length
   ()
   (+
    ;; chess/Player _player
    (send _player :serialization-length)
    ;; string _kind
    4 (length _kind)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; chess/Player _player
       (send _player :serialize s)
     ;; string _kind
       (write-long (length _kind) s) (princ _kind s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; chess/Player _player
     (send _player :deserialize buf ptr-) (incf ptr- (send _player :serialization-length))
   ;; string _kind
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kind (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get chess::Chesspiece :md5sum-) "307c05ea07e91a96fc14a8ccf97033ab")
(setf (get chess::Chesspiece :datatype-) "chess/Chesspiece")
(setf (get chess::Chesspiece :definition-)
      "string KING=k
string QUEEN=q
string ROOK=r
string KNIGHT=n
string BISHOP=b
string PAWN=p
string EMPTY=

chess/Player player
string kind

================================================================================
MSG: chess/Player
uint8 WHITE=0
uint8 BLACK=1

uint8 id  # one of the two options above

")



(provide :chess/Chesspiece "307c05ea07e91a96fc14a8ccf97033ab")


