(defun palindromep (lst) 
    (every #'eql lst (reverse lst))
)
