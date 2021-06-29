(in-package :example)

(defun controller-show ()
  (let* ((id (get-id-from-uri))
	 (movie (movie-get id)))
    (standard-page
      (:h2 (fmt "Details about ~A" (movie-title movie)))
      (:ul :id "details"
	   (:li (fmt "Rating: ~A" (movie-rating movie)))
	   (:li (fmt "Released on: ~A" (print-date (movie-release-date movie)))))
      (:a :href (concatenate 'string id "/edit") "Edit movie")(:br)
      (:a :href (concatenate 'string id "/delete") "Delete movie")(:br)
      (:a :href "/movies" "Back to movies list"))))