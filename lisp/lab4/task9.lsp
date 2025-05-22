(defun mult1 (lst multiplier)
    (cons
        (* (car lst) multiplier)
        (cdr lst)
    )
)

(defun mult2 (lst multiplier)
    (and lst
        (if (numberp (car lst))
            (cons
                (* (car lst) multiplier)
                (cdr lst)
            )
            (cons 
                (car lst)
                (mult2 (cdr lst) multiplier)
            )
        )
    )
)

(print (mult1 '(2 1 3) 5))
(print (mult2 '(2 1 3) 5))
(print (mult2 '(a a a) 5))
