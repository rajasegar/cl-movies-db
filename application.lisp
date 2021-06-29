(in-package :example)

(defun start-server ()
  (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor) :port 3000))
