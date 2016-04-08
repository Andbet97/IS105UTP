#lang racket
(require math/base)
;1) Hacer una función que reciba una cadena de caracteres y devuelva
;otra mutable y con el contenido de la primera.

(display "ingrese la cadena, recuerde que debe ser entre comillas ")
(define n (read))
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
(display "la cadena mutable es ")
(inv (- (string-length cadena) 1))
