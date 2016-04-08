#lang racket
#|6) Haga una función que reciba dos cadenas de caracteres y devuelva otra cadena
 con la concatenación de las dos primeras.|#

(display "ingrese la primer cadena ")
(define cadena (read-line))
(newline)
(display "ingrese la segunda cadena ")
(define cadena2 (read-line))
(newline)
(display "su cadena es ")
(newline)
(string-append cadena " " cadena2)