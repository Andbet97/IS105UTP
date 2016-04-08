;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 16.2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CONVERTIR DE CENTIMETROS A PULGADAS

;Funcion para convertir centimetros en pulgadas
; x n => #
;doonde n es la cantidad en centimetros y # el resultado en pulgadas
;ejemplo (x 1270) => 500
;cuerpo
(define (x n)(/ n 2.54))
;prueba
(x 1270)