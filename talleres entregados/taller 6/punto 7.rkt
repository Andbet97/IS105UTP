#lang racket
#|7) Hacer una función que reciba una cadena de caracteres y cuente cuantas vocales tiene.|#

(display "ingrese la cadena ")
(define cadena (read-line))
(define (cont a x)
  (if (>= a 0)
       (if (or (equal? (string-ref cadena a) #\a)
               (equal? (string-ref cadena a) #\e)
               (equal? (string-ref cadena a) #\i)
               (equal? (string-ref cadena a) #\o)
               (equal? (string-ref cadena a) #\u))
        (cont (- a 1) (+ x 1))
        (cont (- a 1) x ))
        x)
  )
;llamado
(define a  (- (string-length cadena)1 ))
(newline)
(display "el numero de vocales de su cadena es ")
(newline)
(cont a 0)
