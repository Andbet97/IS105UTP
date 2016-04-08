#lang racket

#|13. Hacer una función que reciba un vector de enteros y lo ordene ascendentemente.|#

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
      (vector-set! vector1 n (numero n))
      (vector_aux (+ n 1) (- x 1))
      )
      (begin
        (display "el vector sin ordenar es ")
      vector1))
  )
;funcion recursiva que cambia termino a termino las posiciones
;llamado-------------------------------------------------------
(display "de cuantos enteros desea el vector ")
(define vector1 (make-vector (read)))
(vector_aux 0 (- (vector-length vector1) 1))

(define vector2 (make-vector (vector-length vector1)))#|crear un nuevo vector para ordenar espacio por espacio|#

(define (fun a b)
  (if (or (= a (-(vector-length vector1 )1)) (= b (-(vector-length vector1 )1)))
      (if (> (vector-ref vector1 a)(vector-ref vector1 b))
          (vector-ref vector1 a)
          (vector-ref vector1 b)
          )
      (cond
        ((< (vector-ref vector1 a)(vector-ref vector1 b)) (fun (+ a 1) b ))
        ((> (vector-ref vector1 a)(vector-ref vector1 b)) (fun  a (+ b 1)))
        (else (fun a (+ b 1)))
        )))
#|funcion que me devuelve el numero mayor del vector|#
;---------------------------------------------------------------------------------------------
(define (fun2 a b)
  (if (or (= a (-(vector-length vector1 )1)) (= b (-(vector-length vector1 )1)))
      (if (< (vector-ref vector1 a)(vector-ref vector1 b))
          (vector-ref vector1 a)
          (vector-ref vector1 b)
          )
      (cond
        ((> (vector-ref vector1 a)(vector-ref vector1 b)) (fun2 (+ a 1) b ))
        ((< (vector-ref vector1 a)(vector-ref vector1 b)) (fun2  a (+ b 1)))
        (else (fun2 a (+ b 1)))
        )))
#|funcion que me devuelve el menor del vector|#
;---------------------------------------------------------------------------------
(define (posicion p)
  (if (= (vector-ref vector1 p) (fun2 0 1))
        p
      (posicion (- p 1))
      )
  )

#|funcion que me dice la posicion del menor del vector|#
;------------------------------------------------------------------------------
(define (cambio m)
  (if (= m (vector-length vector1 ))
      vector2
(begin
  (vector-set! vector2 m (fun2 0 1))
  (vector-set! vector1 (posicion (- (vector-length vector1)1)) (fun 0 1))
  (cambio (+ m 1)))
)
  )
#|esta funcion compila todo y hace el cambio de posiciones en el vector2 de los menores del vector1, ademas
cambia la posicion de vector1 donde esta el menor por el mayor del vector para asi obtener otro menor al
volver a evaluar|#
;llamado
(display "el vector ordenado es ")
(cambio 0)