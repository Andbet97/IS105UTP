;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;3.	Imprimir la suma de los números del 1 al 10.
(define (suma n)
  (if (= n 1)
      (begin 
        (display "la suma del 1 al 10 es de ")
        n)
      (+ n (suma (- n 1)))
      )
  )
;llamado
(suma 10)