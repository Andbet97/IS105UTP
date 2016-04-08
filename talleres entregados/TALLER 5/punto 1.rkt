;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer un programa que muestre por pantalla 10 veces el mensaje de texto “hola”.

;(text 9 1)=> texto hola 10 veces
(define (text n a)
  (if (> n a )
      (begin
        (display "hola")
        (newline)
        (text (- n 1) a)
        )
      (display "hola")
      )
  )
;llamdo
(text 9 1)