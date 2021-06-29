(in-package :cl-movies-db)

(defmacro standard-page (&body body)
  `(with-html-output-to-string (*standard-output* nil :prologue t :indent t)
     (:html
      (:head
       (:meta :http-equiv "Content-Type" :content "text/html;charset=utf-8")
       (:title "Rotten Potatoes!")
       (:link :type "text/css" :rel "stylesheet" :href "/site.css"))
      (:body
       (:h1 :class "title" "Rotten Potatoes!")
       (:div :id "main"
	     ,@body)))))
