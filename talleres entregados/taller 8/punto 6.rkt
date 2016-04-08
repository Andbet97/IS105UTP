#lang racket

#|6. Hacer una función que reciba una lista de enteros e indique si está ordenada ascendentemente.|#

(diaply "ingrese la lista ")
(define lista (read))

(define (fun a b k g)
  (if (or (= a (length lista)) (= b (length lista )))
      (if (= k (-(length lista )1))
          (display "crece")
          (if (= g (-(length lista)1))
              (display "decrece ")
              (display "esta desordenado "))
          )
          
      (cond
        ((< (list-ref lista a)(list-ref lista b)) (fun (+ a 1) (+ b 1) (+ k 1) g ))
        ((> (list-ref lista a)(list-ref lista b)) (fun  (+ a 1) (+ b 1) k (+ g 1)))
        (else (fun a (+ b 1)))
        )))

(fun 0 1 0 0)