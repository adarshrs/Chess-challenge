;; Auto-generated. Do not edit!


(when (boundp 'chess::Chessboard)
  (if (not (find-package "CHESS"))
    (make-package "CHESS"))
  (shadow 'Chessboard (find-package "CHESS")))
(unless (find-package "CHESS::CHESSBOARD")
  (make-package "CHESS::CHESSBOARD"))

(in-package "ROS")
;;//! \htmlinclude Chessboard.msg.html


(defclass chess::Chessboard
  :super ros::object
  :slots (_squares ))

(defmethod chess::Chessboard
  (:init
   (&key
    ((:squares __squares) (let (r) (dotimes (i 64) (push (instance chess::Chesspiece :init) r)) r))
    )
   (send-super :init)
   (setq _squares __squares)
   self)
  (:squares
   (&rest __squares)
   (if (keywordp (car __squares))
       (send* _squares __squares)
     (progn
       (if __squares (setq _squares (car __squares)))
       _squares)))
  (:serialization-length
   ()
   (+
    ;; chess/Chesspiece[64] _squares
    (apply #'+ (send-all _squares :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; chess/Chesspiece[64] _squares
     (dolist (elem _squares)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; chess/Chesspiece[64] _squares
   (dotimes (i 64)
     (send (elt _squares i) :deserialize buf ptr-) (incf ptr- (send (elt _squares i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get chess::Chessboard :md5sum-) "f9b8a96936f1ecbd729fc4d2fa9fe3ce")
(setf (get chess::Chessboard :datatype-) "chess/Chessboard")
(setf (get chess::Chessboard :definition-)
      "chess/Chesspiece[64] squares

================================================================================
MSG: chess/Chesspiece
string KING=k
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



(provide :chess/Chessboard "f9b8a96936f1ecbd729fc4d2fa9fe3ce")


