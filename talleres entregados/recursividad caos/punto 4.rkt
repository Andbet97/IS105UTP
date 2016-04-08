;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;4.	Imprimir los cuadrados de los números del 1 al 10
(define (cuadrado n)
  (if (< n 10)
      (begin
        (display n)
        (display "^")
        (display "2")
        (display "= ")
        (display (* n n))
        (newline)
        (cuadrado (+ n 1))
      )
      (begin
        (display 10)
        (display "^")
        (display "2")
        (display "= ")
        (display (* 10 10))
        )
      )
  )
;llamado 
(cuadrado 1)