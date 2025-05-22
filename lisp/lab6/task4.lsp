(defun betweenp (elem lborder rborder)
    (and (<= elem rborder) (>= elem lborder)))

(defun filter-by-range (lst lborder rborder)
    (if (not (null lst))
        (if (betweenp (car lst) lborder rborder)
            (cons 
                (car lst) 
                (filter-by-range (cdr lst) lborder rborder))
            (filter-by-range (cdr lst) lborder rborder)
        )))

(defun sort-range (lst border1 border2)
    (sort (if (< border1 border2)
        (filter-by-range lst border1 border2)
        (filter-by-range lst border2 border1)
    ) #'<))
