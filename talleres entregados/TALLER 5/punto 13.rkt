;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que indique si un número x es par. Debe retornar verdadero o falso. Hacer esta función sin utilizar la función remainder.

;(par n)=> #

(define (par n)
  (cond ((= n 1)(display "es impar "))
        ((= n 0)(display "es par "))
        ((> n 1)(par (- n 2)))
        )
  )
;llamado
(display "ingrese el numero ")
(define num (read))
(newline)
(par num)