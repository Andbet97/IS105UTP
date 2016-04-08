;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 17|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Hacer una función que muestre por pantalla los n primeros números de la serie de fibonacci.

;(fibonacci n x y a) => sucesion de fibonacci hasta el n-eseimo termino

(define (fibonacci n x y a)
  (if (= n 0)
      1
      (if (<= a n)
          (begin
            (display y)
            (newline)
        (fibonacci n (+ x y) x (+ a 1)))
        (display y)
        )
  )
      )
 
;llamado
(display "ingree el n-esimo termino ")
(define num (read))
(newline)
(display "la sucesion es ")
(newline)
(fibonacci num 1 1 1)