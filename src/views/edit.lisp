(in-package :example)

(defun controller-edit ()
  (let ((movie (movie-get (get-id-from-uri))))
    (standard-page
    (:h1 "Edit Existing Movie")
    (:form :action (concatenate 'string "/movies/" (get-id-from-uri) "/update") :method "post"
	   (:label "Title")
	   (:input :name "movie-title" :size "30" :type "text" :value (movie-title movie))
	   (:label "Rating")
	   (selector-form "movie-rating" '("G" "PG" "PG-13" "R" "NC-17") (movie-rating movie))
	   (:label "Released on")
	   (selector-form "year" (num-list 2012 1930) (get-year (movie-release-date movie)))
	   (selector-form "month" (num-list 1 12) (get-month (movie-release-date movie)))
	   (selector-form "day" (num-list 1 31) (get-day (movie-release-date movie)))
	   (:input :name "commit" :type "submit" :value "Update Movie Info")))))