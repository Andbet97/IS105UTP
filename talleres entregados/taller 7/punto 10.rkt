#lang racket

#|10. Hacer una función que reciba un vector de enteros y devuelva la posición del
mayor valor de los datos existentes.|#

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


(define (fun a b)
  (if (or (= a (-(vector-length vector )1)) (= b (-(vector-length vector )1)))
      (if (> (vector-ref vector a)(vector-ref vector b))
          (vector-ref vector a)
          (vector-ref vector b)
          )
      (cond
        ((< (vector-ref vector a)(vector-ref vector b)) (fun (+ a 1) b ))
        ((> (vector-ref vector a)(vector-ref vector b)) (fun  a (+ b 1)))
        (else (fun a (+ b 1)))
        )))

;funcion que me devuelve el mayor de los enteros en el vector
;----------------------------------------------------------------------
(define (posicion p)
  (if (= (vector-ref vector p) (fun 0 1))
      (begin
        (display "la posicion del mayor es ")
        p)
      (posicion (- p 1))
      )
  )

(posicion (- (vector-length vector)1))
(display "el mayor es ")
(fun 0 1)