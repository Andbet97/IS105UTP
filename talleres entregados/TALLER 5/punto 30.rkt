;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 30|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;30. Escribir un programa que permita calcular el capital del que se dispondrá después de N periodos mensuales en que
;un capital C ha estado expuesto a una tasa de interés mensual R.

(define (interes c m t a)
  (cond ((> m 0)(interes c (- m 1) t (+ a (* t c))))
        (else (+ a c))
        )
  )
;llamado
(display "indique la tasa de interes que maneja el banco ")
(newline)
(define tas (read))
(newline)
(display "ingrese cuantos meses han pasado ")
(newline)
(define mes (read))
(newline)
(display "ingrese el monto inicial de su cuenta ")
(newline)
(define moneda (read))
(display "el valor a pagar es de ")
(interes moneda mes tas 0)