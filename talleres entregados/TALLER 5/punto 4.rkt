;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que muestre la tabla de multiplicar de un número N.

;(tabla n a)=> tabla de n numero

(define (tabla n a)
  (if (<= a 10)
      (begin
        (display n)
        (display "*")
        (display a)
        (display "=")
        (display (* n a))
        (newline)
        (tabla n (+ a 1))
        )
      (display "fin")
      )
  )
;llamdo
(display "de que numero desea la tabla de multiplicar")
(define num (read))
(newline)
(tabla num 1)
