(defun without-last1 (lst)
    (reverse (cdr (reverse lst)))
)

(defun without-last2 (lst)
    (butlast lst)
)

(defun without-last3 (lst)
    (and 
        (not (equal (cdr lst) nil))
        (cons (car lst) (without-last3 (cdr lst)))
    )
)



(print (without-last1 '(1 2 3 4 5)))
(print (without-last2 '(1 2 3 4 5)))
(print (without-last3 '(1 2 3 4 5)))