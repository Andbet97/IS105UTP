#lang racket

#|4. Hacer una función reciba un vector de enteros y un numero X, busque el número X en el
vector y devuelva la posición donde se encuentra la primera vez ese número en el vector.
En caso de no estar debe devolver -1.|#

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

(define (posicion a)
  (if (and (>= a 0)(< a (vector-length vector)))
      (if (equal? (vector-ref vector a) entero)
          (begin
          (display "la posicion es ")
          a)
          (posicion (+ a 1))
       )
      -1
      )
  )
;llamado
(display "la posicion es ")
(posicion 0)