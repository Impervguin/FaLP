(defun odd-numberp (num) 
    (if (and (numberp num) (oddp num))
        num))

(defun first-odd (lst)
    (if (not (null lst))
        (or
            (odd-numberp (car lst))
            (and (listp (car lst)) (first-odd (car lst)))
            (first-odd (cdr lst)))))
