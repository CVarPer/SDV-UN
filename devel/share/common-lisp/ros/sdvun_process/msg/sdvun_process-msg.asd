
(cl:in-package :asdf)

(defsystem "sdvun_process-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FirebaseProcess" :depends-on ("_package_FirebaseProcess"))
    (:file "_package_FirebaseProcess" :depends-on ("_package"))
  ))