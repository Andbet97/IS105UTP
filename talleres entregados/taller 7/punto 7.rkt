#lang racket

#|7. Hacer una función que reciba un vector de enteros y un número X, la función debe borrar el
número si lo encuentra y debe hacer SHIFT-LEFT (mover a la izquierda)
todos los elementos siguientes y dejando el valor -1 en la última posición.|#


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
      vector)
  )
;funcion recursiva que cambia termino a termino las posiciones
;llamado-------------------------------------------------------
(display "de cuantos enteros desea el vector ")
(define vector (make-vector (read)))
(vector_aux 0 (- (vector-length vector) 1))
(newline)
(display "ingrese el numero extra ")
(define entero (read))

;-----------------------------------------------------------------------
(define (funcion z)
  (if (equal? z (-(vector-length vector)1))
      (vector-set! vector (- (vector-length vector )1) -1)
      (begin
        (vector-set! vector z (vector-ref vector (+ z 1)))
        (funcion (+ z 1)))
      )
  )

(define (posicion a )
  (if (and (>= a 0)(< a (vector-length vector)))
      (if (equal? (vector-ref vector a) entero)
          (begin
            (funcion a)
            (posicion a))
          (posicion (+ a 1))
       )
      vector
      )
  )
;llamado
(display "el vector final es ")
(posicion 0 )
