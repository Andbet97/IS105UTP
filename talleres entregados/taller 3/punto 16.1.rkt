;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 16.1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CONVERTIR DE PULGADAS A CENTIMETROS

;Funcion para convertir pulgadas en centrimetros
; x n => #
;doonde n es la cantidad en pulgadas y # el resultado en centimetros
;ejemplo (x 45) => 114.3
;cuerpo
(define (x n)(* n 2.54))
;prueba
(x 45)