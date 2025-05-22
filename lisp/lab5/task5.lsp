
; Создаёт список длиной n из elem
(defun n-copy-list (n elem)
    (if (= n 1)
        (cons elem nil)
        (cons elem (n-copy-list (- n 1) elem))
    )
)

; Проверяет равны ли множества
(defun set-equal (set1 set2)
    (and
        (= (length set1) (length set2))
        (every #'member set1 (n-copy-list (length set2) set2))
        (every #'member set2 (n-copy-list (length set1) set1))
    )
)

(print (set-equal '(1 2 3 4 5) '(5 4 3 2 1)))