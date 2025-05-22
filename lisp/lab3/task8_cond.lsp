(defun between (n1 n2 n3) (
    cond ((< n1 n2) (cond ((> n1 n3) T) (T nil)))
        ((> n1 n2) (cond ((< n1 n3) T) (T nil)))
))

(print (between 2 1 3))
(print (between 2 2 2))
(print (between 1 2 3))
(print (between 2 3 1))