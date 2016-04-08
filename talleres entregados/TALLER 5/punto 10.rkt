;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que devuelva la sumatoria de los números dados por la expresión xx. Para todos los números entre 1 y n.

;(suma n a)=>#

(define (suma n a)
  (if (= n 0)
      a
      (suma (- n 1)(+ a (expt n n)))
      )
  )
;llamado
(display "hasta que numero desea sumar ")
(define num (read))
(newline)
(display "la suma es de ")
(suma num 0)