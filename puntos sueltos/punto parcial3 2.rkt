#lang racket

#|2. Desarrollar una función llamada buscar que determine si un numero está en un 
vector  de números.|#

(define (numero a)
  (vector-ref (make-vector 1 (random 10)) 0)
  )
  
;funcion que devuelve el entero (un random de 1 a 10) que quiero poner en una posicion a 
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
vector
(display "ingrese el numero a buscar ")
(define entero (read))

(define (buscar a)
  (if (and (>= a 0)(< a (vector-length vector)))
      (if (equal? (vector-ref vector a) entero)
          (begin
          (display "el numero esta, y se encuentra en la posicion ")
          a)
          (buscar (+ a 1))
       )
      "el numero no se encuentra en el vector"
      )
  )
;llamado
(buscar 0)