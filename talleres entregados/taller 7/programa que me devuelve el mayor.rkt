#lang racket

(define vector1 (vector 3 3 3 ))
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
(fun 0 1)
;funcion que devuelve el mayor
;.-------------------------------------------------------------------------------------

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
(fun2 0 1)
;funcion que devuelve el menor 