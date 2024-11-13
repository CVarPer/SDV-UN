
(cl:in-package :asdf)

(defsystem "sdv_serial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "battery" :depends-on ("_package_battery"))
    (:file "_package_battery" :depends-on ("_package"))
    (:file "encoder" :depends-on ("_package_encoder"))
    (:file "_package_encoder" :depends-on ("_package"))
    (:file "flexiforce" :depends-on ("_package_flexiforce"))
    (:file "_package_flexiforce" :depends-on ("_package"))
    (:file "motors" :depends-on ("_package_motors"))
    (:file "_package_motors" :depends-on ("_package"))
    (:file "sdv_status" :depends-on ("_package_sdv_status"))
    (:file "_package_sdv_status" :depends-on ("_package"))
    (:file "tag_rfid" :depends-on ("_package_tag_rfid"))
    (:file "_package_tag_rfid" :depends-on ("_package"))
    (:file "ultrasound" :depends-on ("_package_ultrasound"))
    (:file "_package_ultrasound" :depends-on ("_package"))
  ))