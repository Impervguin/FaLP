(defun capital-by-country (table country)
    (cond 
        ((not table) table)
        ((equal (caar table) country) (cdar table))
        (t (capital-by-country (cdr table) country))
    )
)

(defun country-by-capital (table capital)
    (cond 
        ((not table) table)
        ((equal (cdar table) capital) (caar table))
        (t (country-by-capital (cdr table) capital))
    )
)

(print (capital-by-country (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'B))
(print (capital-by-country (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'A))
(print (capital-by-country (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'E))
(print (capital-by-country (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'F))

(print (country-by-capital (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'B))
(print (country-by-capital (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'A))
(print (country-by-capital (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'E))
(print (country-by-capital (list (cons 'A 'B) (cons 'B 'A) (cons 'C 'D) (cons 'D 'E) (cons 'E 'F)) 'F))