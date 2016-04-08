;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 32|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;32. Se considera la Serie definida por :
;A1 = 0, A2 = 1, ..............., An = 3 * An-1 + 2 * An-2 ( para n >= 3)
;Escribir un programa que permita calcular el término n.

(define (serie n)
  (cond ((= n 1) 0)
        ((= n 2) 1)
        (else (+ (* (serie (- n 1))3)(* 2 (serie (- n 2)))))
        )
  )
;llamado
(display "que termino desea conocer ")
(define num (read))
(newline)
(display "el termino es ")
(serie num)
