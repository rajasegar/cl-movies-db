(in-package :example)

(defun controller-new ()
  (standard-page
    (:h1 "Create new movie")
    (:form :action "/add-movie" :method "post"
	   (:label "Title")
	   (:input :name "movie-title" :size "30" :type "text")
	   (:label "Rating")
	   (selector-form "movie-rating" '("G" "PG" "PG-13" "R" "NC-17"))
	   (:label "Released on")
	   (selector-form "year" (num-list 2012 1930))
	   (selector-form "month" (num-list 1 12))
	   (selector-form "day" (num-list 1 31))	  
	   (:input :name "commit" :type "submit" :value "Save Changes"))))
    

    