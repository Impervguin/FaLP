(defun swap-last (lst elem)
    (cond ((equal (cdr lst) nil) (list elem) )
        (t (cons (car lst) (swap-last (cdr lst) elem)))
    )
)

(defun swap-first-last (lst)
    (cons (car (last lst)) (swap-last (cdr lst) (car lst)))
)

(print (swap-first-last '(1 2 3 4)))
(print (swap-first-last ()))