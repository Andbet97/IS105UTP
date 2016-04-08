;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 16|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que devuelva el n-ésimo número de la serie de Fibonacci.

;(fibonacci n)=> #

(define (fibonacci n )
  (cond ((or(= n 0)(= n 1)) 1)
        (else (+ (fibonacci (- n 1))(fibonacci (- n 2))))
        )
  )
;llamado
(display "ingrese el n-esimo termino ")
(define num (read))
(newline)
(display "el numero es ")
(fibonacci num)