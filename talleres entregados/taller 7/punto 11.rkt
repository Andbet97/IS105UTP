#lang racket

#|11. Dado un vector hacer una función que invoque a la anterior e indique por pantalla cual es el valor máximo del vector.|#

(define vector1 (vector 1 2 20 50 88 99 ))
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
        )
      )
  )
;llamado 
(display "el numero mas grande es ")
(fun 0 1)
