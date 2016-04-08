;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;12.Hacer un programa que lea 10 números e imprima el cuadrado y el cubo de cada número. Los números se deben leer dentro de la función.

(define (numero n )
  (if (< n (+ 9 num ))
      (begin
       (display n)
       (display "      |     ")
       (display (expt n 2))
       (display "     |    ")
       (display (expt n 3))
       (newline)
       (numero  (+ 1 n) )
       )
      (begin
       (display n)
       (display "      |    ")
       (display (expt n 2))
       (display "     |    ")
       (display (expt n 3))
       (newline)
       )
      )
  )
;llamado
(display "escriba el primer numero ")
(define num (read))
(newline)
(display "numero   cuadrado      cubo")
(newline)
(numero num )