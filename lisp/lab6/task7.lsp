(defun allodd (lst)
    (or 
        (null lst)
        (and (oddp (car lst)) (allodd(cdr lst)))))