(defun square (x) (* x x))

(defun squarelst (lst)
    (mapcar #'square lst)
)
