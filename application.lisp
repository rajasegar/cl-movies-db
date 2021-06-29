(in-package :cl-movies-db)

(defun start-server ()
  (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor) :port 3000))
