;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 17|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CONVERTIR DE PIES A PULGADAS

;Funcion para convertir pies en pulgadas
; x n => #
;doonde n es la cantidad en pies y # el resultado en pulgadas
;ejemplo (x 70) => 840
;cuerpo
(define (x n)(* n 12))
;prueba
(x 70)