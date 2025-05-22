(defun my-reverse (lst) 
    (reverse-helper lst ()))

(defun reverse-helper (lst res)
    (if (null lst)
        res
        (reverse-helper (cdr lst) (cons (car lst) res))))