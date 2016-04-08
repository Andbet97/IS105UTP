#lang racket

#|9. Hacer una función que reciba dos listas y devuelva una lista con la
concatenación de las dos anteriores.|#

(display "ingrese la primer cadena ")
(define lista (read))
(display "ingrese la segunda cadena ")
(define lista2 (read))

(display " la lista final es ")
(append lista lista2)