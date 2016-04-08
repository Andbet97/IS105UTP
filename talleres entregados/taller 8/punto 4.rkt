#lang racket

#|4. Hacer una función que reciba una lista y un dato y adicione el dato al final de la lista.|#


(display "ingrese la lista ")
(define lista (read))
(display "ingrese el valor extra ")
(define extra (list (read)))
(display "la lista final es ")
(append lista extra)