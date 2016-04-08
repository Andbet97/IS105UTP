;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que encuentre y devuelva el mínimo común múltiplo de dos números a y b (enteros positivos).

;(mcm x y )=> #

(define (mcm x y)
    (cond
      ((= x y) x)
      ((< x y) (mcm x (- y x)))     
      (else    (mcm (- x y) y))
      )
  )
;llamado
(display "ingrese el primer numero ")
(define num1 (read))
(newline)
(display "ingrese el segundo numero ")
(define num2 (read))
(newline)
(display "el mcm entre estos numeros es ")
(/(* num1 num2)(mcm num1 num2))
