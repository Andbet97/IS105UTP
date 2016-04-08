;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 20|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CONVERTIR DE MILLAS A CENTIMETROS

;Convertir de millas a centimetros usando
;las funciones de los puntos 16, 17, 18 y 19
; x n => #
;donde n es la cantidad en millas y # es el resultado en centimetros
;ejemplo (x 5) => 804672
;cuerpo
(define (x n)(* n 1760 3 12 2.54))
;prueba
(x 5)