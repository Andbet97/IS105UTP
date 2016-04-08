#lang racket

#|11) Hacer una función boolean que reciba dos cadenas de caracteres e indique si son iguales.|#

(display "ingrese la primer cadena ")
(define cadena (read-line))
(display "ingrese la segunda cadena ")
(define cadena2 (read-line))
(if (equal? cadena cadena2)
    (display "son iguales")
    (display "no son iguales"))