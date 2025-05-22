(defun recnth (n lst)
    (if (>= n 0)
        (recnth-helper n lst)))

(defun recnth-helper (n lst)
    (if (> n 0)
        (recnth (- n 1) (cdr lst))
        (car lst)))

