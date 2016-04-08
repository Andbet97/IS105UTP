;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;HACER UNA FUNCION QUE ELEVE AL CUADRADO SIN USAR EXPT O SQR

;Hacer una funcion que eleve al cuadrado sin usar expt o sqr
; x n => #
;donde n es el valor a elevar al cuadrado
;ejemplo (6 n) => 36
;cuerpo
(define (x n)(* n n))
;prueba
(x 6)