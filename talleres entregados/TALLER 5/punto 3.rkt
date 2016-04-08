;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer un programa que escriba los primeros N números enteros.

;(entero n 1)=> n numero enteros

(define (entero n a)
  (if (> n a)
      (begin
       (display a)
       (newline)
       (entero  n (+ a 1))
       )
      (display a)
      )
  )
;llamado
(display "cuantos enteros desea ver ")
(define num (read))
(newline)
(entero num 1)