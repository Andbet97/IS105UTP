#lang racket

#|3. Hacer lo mismo que en el punto anterior, pero generando los datos aleatoriamente.|#


(define (numero a)
  (vector-ref (make-vector 1 (random 100)) 0)
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