;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 15|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función booleana que indique si un número es primo o no.

; (primo n) => es o no primo

(define (primo_aux n a)
  (cond ((= a 1)(display "no es primo"))
        ((= n 1)(display "es primo"))
        ((= (modulo a n) 0)(display "no es primo"))
        (else (primo_aux (- n 1) a))
        )
  )
(define (primo n)
  (primo_aux (- n 1) n)
  )
;llamado
(display "ingrese el numero ")
(define num (read))
(newline)
(primo num)