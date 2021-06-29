(asdf:defsystem #:cl-movies-db
  :serial t
  :description "Example cl-heroku application"
  :depends-on (#:hunchentoot
	       #:cl-who
	       #:postmodern
	       #:simple-date)
  :components ((:file "package")
	       (:file "application")
	       (:module :src
			:serial t      
			:components
			((:module :util
				  :serial t
				  :components ((:file "general-utils")
					       (:file "date-utils")
					       (:file "heroku-utils")
					       (:file "html-utils")
					       (:file "model-utils")))
			 (:file "model")
			 (:module :views
				  :serial t
				  :components ((:file "layout")
					       (:file "index")
					       (:file "new")
					       (:file "show")
					       (:file "edit")))
			 (:file "controllers")))))

