(defun mult-list-numbers (lst multiplier)
    (if (not (null lst))
        (cons
            (* (car lst) multiplier)
            (mult-list-numbers (cdr lst) multiplier))))

; (defun mult-list-any (lst multiplier)
; (if (not (null lst))
;         (cons
;             (if (numberp (car lst)) 
;                 (* (car lst) multiplier)
;                 (car lst))
;             (mult-list-any (cdr lst) multiplier))))

(defun mult-list-any (lst multiplier)
    (cond
        ((null lst) '())
        ((numberp (car lst)) (cons (* (car lst) multiplier) (mult-list-any (cdr lst) multiplier)))
        (t (cons (car lst) (mult-list-any (cdr lst) multiplier)))
    )
)

(print (mult-list-any '(1 2 "3" 4.5 6) 3))