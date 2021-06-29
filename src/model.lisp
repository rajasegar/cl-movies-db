(in-package :cl-movies-db)
       
(defmodel movie
    ((title :col-type string :initarg :title :accessor movie-title)
     (rating :col-type string :initarg :rating :accessor movie-rating)
     (release-date :col-type date :initarg :release-date :accessor movie-release-date)))
