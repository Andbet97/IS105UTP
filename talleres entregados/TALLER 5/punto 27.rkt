;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 27|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Construir una función que reciba como parámetro un número natural N, y calcule la suma de todos los naturales menores que el número recibido.


(define (suma n a)
  (if (= n 0)
      a
      (suma (- n 1)(+ n a))
      )
  )
;llamado
(display "hasta que numero desea sumar ")
(define num (read))
(newline)
(display "la suma es de ")
(- (suma num 0) num)