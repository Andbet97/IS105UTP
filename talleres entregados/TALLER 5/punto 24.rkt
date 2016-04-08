;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 24|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que reciba como parámetro un número entero N, lea N números y devuelva el promedio de los datos leídos.

;(suma n a)=> #

(define (suma n a)
  (if (= n 0)
      a
      (suma (- n 1)(+ n a))
      )
  )
;llamado
(display "hasta que numero desea saber el promedio ")
(define num (read))
(newline)
(display "el promedio es de es de ")
(/(suma num 0) num )