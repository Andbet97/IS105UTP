#lang racket

#|12) Hacer una función que reciba dos cadenas de caracteres e indique si la segunda está incluida en la primera
(es decir si es substring).|#

(display "ingrese la primer cadena ")
(define cadena (read-line))
(display "ingrese la segunda cadena ")
(define cadena2 (read-line))

(define x  (string-length cadena2) )

(define (evaluacion a x)
  (if (>= (string-length cadena) x)
      (if (equal? (substring cadena a x) cadena2)
          (display "la segunda cadena es substring de la primera")
          (evaluacion (+ a 1)(+ x 1)))
      (display "la segunda cadena no es substring de la primera"))
  )
(evaluacion 0 x)