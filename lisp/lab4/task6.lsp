(defun dice-throw (state) (+ (random 6 state) 1))

(defun dice-combo (state) (cons (dice-throw state) (dice-throw state)))

(defun first-throw (state)
    (let ((result (dice-combo state)))
        (and 
            (print '(Бросает первый игрок))
            (print result)
            (if (or (equal result (cons 1 1)) (equal result (cons 6 6)))
                (and 
                    (print '(Дубль! Надо перебросить))
                    (first-throw state)
                )
                result
            )
        )
    )
)
(defun second-throw (state)
    (let ((result (dice-combo state)))
        (and 
            (print '(Бросает второй игрок))
            (print result)
            (if (or (equal result (cons 1 1)) (equal result (cons 6 6)))
                (and 
                    (print '(Дубль! Надо перебросить))
                    (second-throw state)
                )
                result
            )
        )
    )
)

(defun dice-sum (dice) (+ (car dice) (cdr dice)))

(defun absolute-win (result) (or (equal (dice-sum result) 7) (equal (dice-sum result) 11)))

(defun dice-game (state)
    (let ((result1 (first-throw state)))
        (if (absolute-win result1)
            (print '(Игра завершена! Первый игрок выиграл))
            (let ((result2 (second-throw state)))
                (if (absolute-win result2)
                    (print '(Игра завершена! Второй игрок выиграл))
                    (if (> (dice-sum result1) (dice-sum result2))
                        (print '(Игра завершена! Первый игрок выиграл))
                        (print '(Игра завершена! Второй игрок выиграл))
                    )
                )
            )  
        )
    )
)

(dice-game (make-random-state t))
