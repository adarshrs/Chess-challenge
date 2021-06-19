;; Auto-generated. Do not edit!


(when (boundp 'chess::Player)
  (if (not (find-package "CHESS"))
    (make-package "CHESS"))
  (shadow 'Player (find-package "CHESS")))
(unless (find-package "CHESS::PLAYER")
  (make-package "CHESS::PLAYER"))

(in-package "ROS")
;;//! \htmlinclude Player.msg.html


(intern "*WHITE*" (find-package "CHESS::PLAYER"))
(shadow '*WHITE* (find-package "CHESS::PLAYER"))
(defconstant chess::Player::*WHITE* 0)
(intern "*BLACK*" (find-package "CHESS::PLAYER"))
(shadow '*BLACK* (find-package "CHESS::PLAYER"))
(defconstant chess::Player::*BLACK* 1)
(defclass chess::Player
  :super ros::object
  :slots (_id ))

(defmethod chess::Player
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get chess::Player :md5sum-) "702ce2a9d992b93a9f0e4effdd691b99")
(setf (get chess::Player :datatype-) "chess/Player")
(setf (get chess::Player :definition-)
      "uint8 WHITE=0
uint8 BLACK=1

uint8 id  # one of the two options above

")



(provide :chess/Player "702ce2a9d992b93a9f0e4effdd691b99")


