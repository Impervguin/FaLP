(defun map-minus-10 (lst)
    (mapcar #'(lambda (x) (- x 10)) lst))

(defun map-minus-10* (lst)
    (mapcar #'(lambda (x) 
        (if (numberp x) 
            (- x 10)
            x
        )) lst))


; Корректные запуски
(map-minus-10* '(1 2 3 4 5))
(map-minus-10* '(a 2 b 4 c))
(map-minus-10* '(1))
(map-minus-10* '(1 2 (3 4 5)))
(map-minus-10* '(a b))
(map-minus-10* '())

(map-minus-10 '(1 2 3 4 5))
(map-minus-10 '(1))
(map-minus-10 '())


; Некорректные запуски
(map-minus-10 '(a 2 b 4 c))
(map-minus-10 '(1 2 (3 4 5)))
(map-minus-10 '(a b))


