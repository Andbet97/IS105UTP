#lang racket

#|5. Dado un vector V de enteros y un número X, devolver el valor de veces que está X en el vector.|#

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
      (display " "))
  )
;funcion recursiva que cambia termino a termino las posiciones
;llamado-------------------------------------------------------
(display "de cuantos enteros desea el vector ")
(define vector (make-vector (read)))
(vector_aux 0 (- (vector-length vector) 1))
(newline)
(display "ingrese el numero extra ")
(define entero (read))

(define (posicion a o)
  (if (and (>= a 0)(< a (vector-length vector)))
      (if (equal? (vector-ref vector a) entero)
          (posicion (+ a 1) (+ o 1))          
          (posicion (+ a 1) o)
       )
      o
      )
  )
;llamado
(display "este numero esta ")
(posicion 0 0)
(display "veces")