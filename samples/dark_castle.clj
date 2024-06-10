(comment
  "In a land shrouded in mystery...")

(ns clj-dark-castle)

(defstruct dark-castle :name :construction-year :destruction-year :features)

(defn age
  [castle] (- (castle :destruction-year) (castle :construction-year)))

;; ...there stood a Dark Castle
(let [c (struct dark-castle "Starfall Keep" 1100 1678 '("Mystical Lights" "Ancient Walls"))]
  (println (age c)))
