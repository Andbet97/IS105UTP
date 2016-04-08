#lang racket

#|14. Hacer una función que lea por teclado N nombres de personas,
 los guarde en un vector y los muestre después por pantalla.|#
(define (numero a)
  (begin
  (display "ingrese el nombre ")
  (display a)
  (display " ")
  (vector-ref (make-vector 1 (read)) 0))
  )

;funcion que devuelve el entero que quiero poner en una posicion a 
;---------------------------------------------------
(define (vector_aux n x)
  (if (<= 0 x)
      (begin
      (vector-set! vector n (numero n))
      (vector_aux (+ n 1) (- x 1))
      )
      (display vector))
  )
;funcion recursiva que cambia termino a termino las posiciones
;llamado-------------------------------------------------------
(display "cuantos nombres desea escribir ")
(define vector (make-vector (read)))
(vector_aux 0 (- (vector-length vector) 1))

