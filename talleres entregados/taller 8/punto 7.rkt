#lang racket

#|7. Hacer una función que reciba una lista y devuelva otra con los datos de la primera invertida.
Nota: No se puede usar otra estructura de datos como un vector.|#

(display "ingrese la cadena ")
(define lista (read))
lista
(display "la segunda cadena, la invertida, es ")
(define lista2 (reverse lista))
lista2