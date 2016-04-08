#lang racket
#|5) Hacer una función que reciba una cadena de caracteres y devuelva otra cadena invirtiendo todos los caracteres de la primera.|#

(define n (read-line))
(define cadena n)
(define (inv x)
  (if (< 0 x)
       (begin
         (display (string-ref cadena x))
         (inv (- x 1))
         )
       (display (string-ref cadena x))
       )
   )
;llamado
(inv (- (string-length cadena) 1))
