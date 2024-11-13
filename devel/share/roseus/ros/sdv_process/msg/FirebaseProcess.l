;; Auto-generated. Do not edit!


(when (boundp 'sdv_process::FirebaseProcess)
  (if (not (find-package "SDV_PROCESS"))
    (make-package "SDV_PROCESS"))
  (shadow 'FirebaseProcess (find-package "SDV_PROCESS")))
(unless (find-package "SDV_PROCESS::FIREBASEPROCESS")
  (make-package "SDV_PROCESS::FIREBASEPROCESS"))

(in-package "ROS")
;;//! \htmlinclude FirebaseProcess.msg.html


(defclass sdv_process::FirebaseProcess
  :super ros::object
  :slots (_key _value ))

(defmethod sdv_process::FirebaseProcess
  (:init
   (&key
    ((:key __key) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _value (string __value))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sdv_process::FirebaseProcess :md5sum-) "cf57fdc6617a881a88c16e768132149c")
(setf (get sdv_process::FirebaseProcess :datatype-) "sdv_process/FirebaseProcess")
(setf (get sdv_process::FirebaseProcess :definition-)
      "string key
string value
")



(provide :sdv_process/FirebaseProcess "cf57fdc6617a881a88c16e768132149c")


