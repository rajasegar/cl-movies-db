(in-package :cl-user)

(print ">>> Building system....")

(load (make-pathname :directory *build-dir* :defaults "cl-movies-db.asd"))

(ql:quickload :cl-movies-db)

;;; Redefine / extend heroku-toplevel here if necessary.

(print ">>> Done building system")
