#lang racket

#|3. Hacer una función que reciba una lista y un dato a buscar. Se debe devolver la posición en la
que se encuentra el dato la primera vez en la lista, o -1 sino existe.|#

(display "introduzca la lista ")
(define lista (read))
(display "introduzca el valor a buscar ")
(define x (read))

(define (posicion a)
  (if (and (>= a 0)(< a (length lista)))
      (if (equal? (list-ref lista a) x)
          (begin
          (display "la posicion es ")
          a)
          (posicion (+ a 1))
       )
      -1
      )
  )
;llamado
(posicion 0)