#lang racket

(define vector1 (vector 5 4 3 2))
(define (fun a b k g)
  (if (or (= a (vector-length vector1)) (= b (vector-length vector1 )))
      (if (= k (-(vector-length vector1 )1))
          (display "crece")
          (if (= g (-(vector-length vector1)1))
              (display "decrese ")
              (display "esta desordenado "))
          )
          
      (cond
        ((< (vector-ref vector1 a)(vector-ref vector1 b)) (fun (+ a 1) (+ b 1) (+ k 1) g ))
        ((> (vector-ref vector1 a)(vector-ref vector1 b)) (fun  (+ a 1) (+ b 1) k (+ g 1)))
        (else (fun a (+ b 1)))
        )))
  (fun 0 1 0 0)