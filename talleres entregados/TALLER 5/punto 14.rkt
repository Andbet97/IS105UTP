;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 14|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que muestre por pantalla los submúltiplos de x (entero positivo).

;(submul n a) => lista de submultiplos

(define (submul n a)
  (if (> n a)
      (if (= (modulo n a) 0)
          (begin
            (display (quotient n a))
            (newline)
            (submul n (+ a 1))
          )
          (submul n (+ a 1))
          )
      (display 1)
      )
  )
;llamdo
(display "ingrese el numero ")
(define num (read))
(newline)
(display "los submultiplos son: ")
(newline)
(submul num 1)
  