#lang racket

#|12. Hacer una función que reciba un vector de enteros e indique si está ordenado ascendentemente.|#

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

(define (fun a b k g)
  (if (or (= a (vector-length vector)) (= b (vector-length vector )))
      (if (= k (-(vector-length vector )1))
          (display "crece")
          (if (= g (-(vector-length vector)1))
              (display "decrece ")
              (display "esta desordenado "))
          )
          
      (cond
        ((< (vector-ref vector a)(vector-ref vector b)) (fun (+ a 1) (+ b 1) (+ k 1) g ))
        ((> (vector-ref vector a)(vector-ref vector b)) (fun  (+ a 1) (+ b 1) k (+ g 1)))
        (else (fun a (+ b 1)))
        )))

(fun 0 1 0 0)
