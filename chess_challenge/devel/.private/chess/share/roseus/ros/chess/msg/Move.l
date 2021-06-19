;; Auto-generated. Do not edit!


(when (boundp 'chess::Move)
  (if (not (find-package "CHESS"))
    (make-package "CHESS"))
  (shadow 'Move (find-package "CHESS")))
(unless (find-package "CHESS::MOVE")
  (make-package "CHESS::MOVE"))

(in-package "ROS")
;;//! \htmlinclude Move.msg.html


(defclass chess::Move
  :super ros::object
  :slots (_src_row _src_col _dst_row _dst_col _is_castling _is_promotion _piece ))

(defmethod chess::Move
  (:init
   (&key
    ((:src_row __src_row) 0)
    ((:src_col __src_col) 0)
    ((:dst_row __dst_row) 0)
    ((:dst_col __dst_col) 0)
    ((:is_castling __is_castling) nil)
    ((:is_promotion __is_promotion) nil)
    ((:piece __piece) (instance chess::Chesspiece :init))
    )
   (send-super :init)
   (setq _src_row (round __src_row))
   (setq _src_col (round __src_col))
   (setq _dst_row (round __dst_row))
   (setq _dst_col (round __dst_col))
   (setq _is_castling __is_castling)
   (setq _is_promotion __is_promotion)
   (setq _piece __piece)
   self)
  (:src_row
   (&optional __src_row)
   (if __src_row (setq _src_row __src_row)) _src_row)
  (:src_col
   (&optional __src_col)
   (if __src_col (setq _src_col __src_col)) _src_col)
  (:dst_row
   (&optional __dst_row)
   (if __dst_row (setq _dst_row __dst_row)) _dst_row)
  (:dst_col
   (&optional __dst_col)
   (if __dst_col (setq _dst_col __dst_col)) _dst_col)
  (:is_castling
   (&optional __is_castling)
   (if __is_castling (setq _is_castling __is_castling)) _is_castling)
  (:is_promotion
   (&optional __is_promotion)
   (if __is_promotion (setq _is_promotion __is_promotion)) _is_promotion)
  (:piece
   (&rest __piece)
   (if (keywordp (car __piece))
       (send* _piece __piece)
     (progn
       (if __piece (setq _piece (car __piece)))
       _piece)))
  (:serialization-length
   ()
   (+
    ;; uint8 _src_row
    1
    ;; uint8 _src_col
    1
    ;; uint8 _dst_row
    1
    ;; uint8 _dst_col
    1
    ;; bool _is_castling
    1
    ;; bool _is_promotion
    1
    ;; chess/Chesspiece _piece
    (send _piece :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _src_row
       (write-byte _src_row s)
     ;; uint8 _src_col
       (write-byte _src_col s)
     ;; uint8 _dst_row
       (write-byte _dst_row s)
     ;; uint8 _dst_col
       (write-byte _dst_col s)
     ;; bool _is_castling
       (if _is_castling (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_promotion
       (if _is_promotion (write-byte -1 s) (write-byte 0 s))
     ;; chess/Chesspiece _piece
       (send _piece :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _src_row
     (setq _src_row (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _src_col
     (setq _src_col (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dst_row
     (setq _dst_row (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dst_col
     (setq _dst_col (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_castling
     (setq _is_castling (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_promotion
     (setq _is_promotion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; chess/Chesspiece _piece
     (send _piece :deserialize buf ptr-) (incf ptr- (send _piece :serialization-length))
   ;;
   self)
  )

(setf (get chess::Move :md5sum-) "3eaabe5968b4df351a2b07f580e25456")
(setf (get chess::Move :datatype-) "chess/Move")
(setf (get chess::Move :definition-)
      "uint8 src_row  # 1 to 8
uint8 src_col  # 1 (a) to 8 (h)
uint8 dst_row  # 1 to 8
uint8 dst_col  # 1 (a) to 8 (h)

# See: https://en.wikipedia.org/wiki/Castling
bool is_castling

# Note: The piece may only change if a promotion occurs
# See: https://en.wikipedia.org/wiki/Promotion_(chess)
bool is_promotion
chess/Chesspiece piece

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



(provide :chess/Move "3eaabe5968b4df351a2b07f580e25456")


