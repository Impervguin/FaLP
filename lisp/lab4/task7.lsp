(defun last1 (lst) ;
    (car (last lst))
)

(defun without-last1 (lst)
    (reverse (cdr (reverse lst)))
)

(defun palindromep (lst)
    (or (equal lst nil)
        (and 
            (equal (car lst) (last1 lst))
            (palindromep (without-last1 (cdr lst)))
        )
        nil
    )
)

(print (palindromep '(1 2 1)))
(print (palindromep '(1 2 3)))