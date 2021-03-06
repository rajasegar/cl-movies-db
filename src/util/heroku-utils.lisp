(in-package :cl-movies-db)

;; Utils
(defun heroku-getenv (target)
  #+ccl (ccl:getenv target)
  #+sbcl (sb-posix:getenv target))

;; Database
(defvar *database-url* (uiop:getenv "DATABASE_URL"))
;; (format t "DATABASE-URL: ~a~%" *database-url*)
(defvar *local-db-params* (list "test" "user1" "user1" "localhost"))
;; (format t "LOCAL DB PARAMS: ~a~%" *local-db-params*)

;; Start local server
;(defvar *server* (start (make-instance 'easy-acceptor :port 8088)))

(defun db-params ()
  "Heroku database url format is postgres://username:password@host/database_name. If we are testing on localhost, use the db-parameters from *local-db-params*."
  (if *database-url*
      (let* ((url (second (cl-ppcre:split "//" *database-url*)))
	     (user (first (cl-ppcre:split ":" (first (cl-ppcre:split "@" url)))))
	     (password (second (cl-ppcre:split ":" (first (cl-ppcre:split "@" url)))))
	     (host (first (cl-ppcre:split "/" (second (cl-ppcre:split "@" url)))))
	     (database (second (cl-ppcre:split "/" (second (cl-ppcre:split "@" url))))))
	(list database user password host))
      *local-db-params*))
	    
