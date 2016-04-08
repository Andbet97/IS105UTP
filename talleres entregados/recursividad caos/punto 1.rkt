;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;1.	Imprimir los números del 1 al 10
(define (conteo n )
  (if (< n 10)
      (begin
        (display n)
        (newline)
        (conteo (+ n 1))
        )
      (display 10)
      )
  )
;llamado 
(conteo 1)
