; Возвращает суммарную длину списков-элементов списка-аргумента
(defun list-of-lists (lst)
    (reduce #'(lambda (accum ilst) 
        (+ accum (length ilst))) 
    (cons 0 lst))
)

