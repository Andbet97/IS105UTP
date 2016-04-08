;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;2.	Imprimir los números del 10 al 1.
(define (conteo n )
  (if (> n 1)
      (begin
        (display n)
        (newline)
        (conteo (- n 1))
        )
      (display 1)
      )
  )
;llamado 
(conteo 10)
