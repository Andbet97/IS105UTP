;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Desarrolle una funcion para determinar si un "n" dado es solucion de la ecuacion
;4n^2+6n+2=462 y determine si 10, 12 y 14 son soluciones de la ecuacion

(define (ecuacion n)
  (if (= (+ (* 4(expt n 2))(* 6 n)2) 462)
      (display "es solucion de la ecuacion")
      (display "no es solucion de la ecuacion")
      )
  )
; prueba
(display "prueba de 10: ")
(ecuacion 10)
(newline)
(display "prueba de 12: ")
(ecuacion 12)
(newline)
(display "prueba de 14: ")
(ecuacion 14)

      
      