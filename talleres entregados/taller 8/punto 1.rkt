#lang racket

#|1. Hacer una función que reciba una lista y cuente de forma recursiva cuantos elementos hay en la lista.|#


(display "escriba la lista a evaluar ")
(define lista (read))

(define (contar-sub lista)
(cond
[(null? lista) 0]
[(list? (car lista))(+ (contar-sub (car lista)) (contar-sub (cdr lista))) ]
[else (+ 1(contar-sub (cdr lista)))]
)
)
;llamado
(display "la lista tiene ")
(contar-sub lista)
(display "elementos")