(defun true-listp (lst)
    (or
        (null lst)
        (and (consp lst) (true-listp (cdr lst)))))

(defun get-non-list-element (lst)
    (if (not (null lst))
        (if (and (true-listp (car lst)) (not (null (car lst))))
            (car lst)
            (get-non-list-element (cdr lst)))))