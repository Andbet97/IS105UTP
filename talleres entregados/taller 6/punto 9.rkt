#lang racket

#|9) Construir un programa que lea un string con solo caracteres numéricos y devuelva el número
que representa.|#

(display "ingrese la cadnea de numeros ")
(define cadena (string->number (read-line)))
(display "el numero que representa es ")
(display cadena)