(defun into-1level (lst)
    (into-1level-helper lst ())
)

(defun into-1level-helper (lst res)
    (if (not (null lst))
        (if (listp (car lst))
            (into-1level-helper 
                (car lst) 
                (into-1level-helper (cdr lst) res))
            (cons (car lst) (into-1level-helper (cdr lst) res)))
        res))
