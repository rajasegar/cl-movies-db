(in-package :example)

(defun controller-index ()
  (standard-page
    (:h1 "All Movies")
    (:table :id "movies"
     (:thead
      (:tr
       (:th "Movie title")
       (:th "Rating")
       (:th "Release Date")
       (:th "More info")))
     (:tbody
      (all-movie-rows)))
    (:a :href "movies/new/" "Add new movie")))
      