(defun recsquare (lst)
    (if (not (null lst))
        (cons (* (car lst) (car lst)) (recsquare (cdr lst)))))