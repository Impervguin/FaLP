; Для чисел
(defun mult (lst multiplier)
    (mapcar #'(lambda (x) (* x multiplier)) lst))

; Для любых объектов
(defun mult* (lst multiplier)
    (mapcar #'(lambda (x) 
        (if (numberp x) 
            (* x multiplier)
            x
        )) lst))
