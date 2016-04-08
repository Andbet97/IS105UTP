#lang racket

#|2. Hacer una función que devuelva el promedio de los datos de una lista de enteros.|#


(display "escriba la lista a evaluar ")
(define lista (read))

(define (promedio lista)
(/ (apply + lista)(length lista)))
;llamado
(display "el promedio es ")
(promedio lista)