;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Hacer una función que calcule el factorial de un número x.

;(factorial n a)=> #

(define (factorial n)
  (if (= n 0)
      1
      (* n(factorial (- n 1) ))
      )
  )
;llamado
(display "ingrese el número ")
(define num (read))
(newline)
(display "el factorial es ")
(factorial num )
