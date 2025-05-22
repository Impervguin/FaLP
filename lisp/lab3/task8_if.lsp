(defun between (n1 n2 n3) (
    if (< n1 n2) 
    (if (> n1 n3) T nil)
    (if (> n1 n2) 
        (if (< n1 n3) T nil)
    )
))

(print (between 2 1 3))
(print (between 2 2 2))
(print (between 1 2 3))
(print (between 2 3 1))