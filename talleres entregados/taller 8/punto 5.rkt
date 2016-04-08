#lang racket

#|5. Hacer una función que reciba una lista de enteros y devuelva el mayor valor contenido
en la lista o -1 si está vacía.|#


(display "ingrese la lista ")
(define lista (read))

(define (fun a b)
  (if (or (= a (-(length lista )1)) (= b (-(length lista )1)))
      (if (> (list-ref lista a)(list-ref lista b))
          (begin (display "el mayor es ")(list-ref lista a))
          (begin (display "el mayor es ")(list-ref lista b))
          )
      (cond
        ((< (list-ref lista a)(list-ref lista b)) (fun (+ a 1) b ))
        ((> (list-ref lista a)(list-ref lista b)) (fun  a (+ b 1)))
        (else (fun a (+ b 1)))
        )))
;llamado
(if (empty? lista)
    -1
    (fun 0 1))