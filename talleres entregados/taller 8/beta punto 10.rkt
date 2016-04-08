#lang racket


(define lista (read))

(define x (read))
(define y (read))

(define lista2 (list))

(define (unir z) (append lista2 (list (list-ref lista z))))

(define (nueva_lista a b )
  (if (= b a)
      (append (unir (- a 1)) (unir a))
      (begin
        (nueva_lista (+ a 1) b)
        )
      )
  )
(if (< x y)
    (nueva_lista x y)
    (nueva_lista y x)
    )