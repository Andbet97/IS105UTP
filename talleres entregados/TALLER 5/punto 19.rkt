;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que encuentre y retorne el máximo común divisor entre dos números a y b (enteros positivos).

;(mcd x y)=> #

(define (mcd x y)
    (cond
      ((= x y) x)
      ((< x y) (mcd x (- y x)))     
      (else    (mcd (- x y) y))
      )
  )
;llamado
(display "ingrese el primer numero ")
(define num1 (read))
(newline)
(display "ingrese el segundo numero ")
(define num2 (read))
(newline)
(display "el mcd entre estos numeros es ")
(mcd num1 num2)
