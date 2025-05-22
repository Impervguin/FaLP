(defun last1 (lst) ;
    (car (last lst))
)

(defun last2 (lst)
    (car (reverse lst))
)

(defun last3 (lst)
    (cond ((equal (cdr lst) nil) (car lst))
        (t (last3 (cdr lst)))
    )
)

(print (last1 '(a b c d)))
(print (last2 '(a b c d)))
(print (last3 '(a b c d)))
(print (last1 '(1)))
(print (last2 '(1)))
(print (last3 '(1)))
(print (last1 ()))
(print (last2 ()))
(print (last3 ()))