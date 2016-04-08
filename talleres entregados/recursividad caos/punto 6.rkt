;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;3.	Imprimir la suma de los números del 1 al 10.
(define (suma n)
  (if (= n 1)
      (begin 
        (display "la suma de 1 hasta ") 
        (display (- num 1))
        (display " es de ")
        n)
      (+ n (suma (- n 1)))
      )
  )
;llamado
(display "diga su número n ")
(define num (read))
(suma (- num 1))
