;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 31|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Con base en el algoritmo de Euclides, determine el Máximo Común Divisor (M.C.D), dados dos números A y B.

(define (euclides x y)
  (if (= y 0 )
      x
      (euclides y (modulo x y))
      )
  )
;llamado
(display "ingrese el primer numero ")
(define num (read))
(newline)
(display "ingrese lel segundo numero ")
(define num2 (read))
(newline)
(display "el mcd por euclides es ")
(euclides num num2)