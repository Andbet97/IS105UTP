;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 21|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;21. Se considera la serie definida por:
;X1=0, X2=1, X3=8, ..., Xn = (Xn-3) + (Xn-2)3 + (Xn-1)2.
;Dado un valor de n (entero positivo), construya un programa que permita calcular el valor del término Xn.

;(serie n )=> #
;donde n es el enesimo termino a calcular

(define (serie n)
  (cond ((= n 1) 0)
        ((= n 2) 1)
        ((= n 3) 8)
        (else
         (+ (expt (serie (- n 1)) 2)(expt (serie (- n 2))3)(serie (- n 3)))
        )
       )
     )

;llamado
(display "ingrese que termino desea saber ")
(define num (read))
(newline)
(display "el numero es ")
(serie num)
