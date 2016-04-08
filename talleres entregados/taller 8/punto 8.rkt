#lang racket

#|8. Hacer una función que devuelva una lista con los datos que el usuario digite por teclado.
La entrada de datos termina cuando el usuario entre el número -1.|#

(define (agregar lista leer)
  (if (equal? leer -1)
      (begin (display "la lista es ")lista)
      (agregar(append lista (list leer ))(read))
      )
  )
;llamado
(display "ingrese los datos que desee ")
(agregar (list)(read))