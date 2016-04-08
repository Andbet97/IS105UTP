;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que imprima las tablas de multiplicar desde 1 hasta N.

;(tabla n a i)=> tabla del 1 hasta tabla de i numero

(define (tabla n a i)
  (if (<= a 10)
      (begin
        (display n)
        (display "*")
        (display a)
        (display "=")
        (display (* n a))
        (newline)
        (tabla n (+ a 1) i)
        )
      (if (< n i )
        (tabla (+ n 1) 1  i)
        (display "fin")
        )
      )
  )
;llamdo
(display "hasta que numero desea las tabla de multiplicar ")
(define num (read))
(newline)
(tabla 1 1  num)
