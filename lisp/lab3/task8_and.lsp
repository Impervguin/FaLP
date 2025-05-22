(defun between (n1 n2 n3) (
    and (or (and (< n1 n3) (> n1 n2)) (and (< n1 n2) (> n1 n3))) T
))

(print (between 2 1 3))
(print (between 2 2 2))
(print (between 1 2 3))
(print (between 2 3 1))