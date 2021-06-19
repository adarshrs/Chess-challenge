
(cl:in-package :asdf)

(defsystem "chess-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Chessboard" :depends-on ("_package_Chessboard"))
    (:file "_package_Chessboard" :depends-on ("_package"))
    (:file "Chesspiece" :depends-on ("_package_Chesspiece"))
    (:file "_package_Chesspiece" :depends-on ("_package"))
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
    (:file "Player" :depends-on ("_package_Player"))
    (:file "_package_Player" :depends-on ("_package"))
  ))