; Вставить число в отсортированный по возрастанию список
(defun insert-to-sorted (lst elem) 
    (cond 
        ((equal lst nil) (list elem))
        ((< elem (car lst)) (cons elem lst))
        (t (cons (car lst) (insert-to-sorted (cdr lst) elem)))
    )
)

; Соритирует список по возрастанию
(defun insert-sort (lst)
    (reduce #'insert-to-sorted (cons () lst))
)

; Предикат для проверки на то, что число между двумя числами.
; Если число находится между border1 и border2,
; возвращает его, иначе nil.
(defun betweenp (elem border1 border2)
    (if (or (and (<= elem border1) (>= elem border2))
        (and (>= elem border1) (<= elem border2)))
        elem
    )
)

; Возвращает список, в котором удалены nil элементы
(defun filter-nil (lst)
    (if (not (equal lst nil))
        (if (equal (car lst) nil)
            (filter-nil (cdr lst))
            (cons (car lst) (filter-nil (cdr lst)))
        )
    )
)

; Создаёт список длиной n из elem
(defun n-copy-list (n elem)
    (if (= n 1)
        (cons elem nil)
        (cons elem (n-copy-list (- n 1) elem))
    )
)


; Возвращает список из чисел, которые находятся
; между border1 и border2 включительно,
(defun list-beetwen (lst border1 border2)
    (filter-nil (mapcar #'betweenp 
        lst 
        (n-copy-list (length lst) border1) 
        (n-copy-list (length lst) border2)))
)


; Возвращает отсортированный список чисел, которые находятся
; между border1 и border2 включительно.
(defun sorted-list-beetwen (lst border1 border2)
    (insert-sort (list-beetwen lst border1 border2)))


