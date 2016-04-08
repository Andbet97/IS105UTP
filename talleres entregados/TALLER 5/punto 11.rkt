;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Implementar una función que eleve un número x a la y (siendo y un entero positivo) 
;sin usar la funcion expt.

(define (elev x y a)
  (if (= y 0)
      a
      (if (> y 0)
          (elev x (- y 1)(* a x))
          (display "solo es para exponentes enteros positivos")
          )
      )
  )
;llamado 
(display "ingrese la base ")
(define bas (read))
(newline)
(display "ingrese el exponente ")
(define ex (read))
(newline)
(elev bas ex 1)
    