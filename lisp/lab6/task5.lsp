(defun rec-add-1level (lst)
    (cond ((null lst) 0)
          (
            (numberp (car lst)) 
            (+ (car lst) (rec-add-1level (cdr lst))))
          (t (rec-add-1level (cdr lst)))))

(defun rec-add-multilevel (lst)
    (cond ((null lst) 0)
          (
            (numberp (car lst)) 
            (+ (car lst) (rec-add-multilevel (cdr lst))))
          (
            (listp (car lst)) 
            (+ 
                (rec-add-multilevel (car lst))
                (rec-add-multilevel (cdr lst))))
          (t (rec-add-multilevel (cdr lst)))))
