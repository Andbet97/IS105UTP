#lang racket
(require math/base)
#|4) Hacer una función que reciba una cadena de caracteres mutable y la invierta en ella misma.|#

(display "ingrese la cadena ")
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
(display "la cadna invertida es ")
(inv (- (string-length cadena) 1))
(newline)
