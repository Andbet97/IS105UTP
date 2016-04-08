#lang racket

#|8. Hacer una función que reciba un vector, y devuelva una copia en otro vector.|#

(define (numero a)
  (begin
  (display "ingrese el entero ")
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
      (begin
        (display "el vector 1 es ")
      vector))
  )
;funcion recursiva que cambia termino a termino las posiciones
;llamado-------------------------------------------------------
(display "de cuantos enteros desea el vector ")
(define vector (make-vector (read)))
(vector_aux 0 (- (vector-length vector) 1))

(define vector2 (make-vector (vector-length vector)))

(define z (vector-length vector2))
(define (nuevovector z k)
  (if (= z 0)
      vector2
      (begin
        (vector-set! vector2 k (vector-ref vector k))
        (nuevovector (- z 1) (+ k 1)))
      )
  )
;llamado
(display "el vector 2 es ")
(nuevovector z 0)
(display "igual vector 1 a vector 2 ")
(equal? vector vector2)