;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CALCULAR EL VOLUMEN DE UNA PIRAMIDE DE BASE CUADRADA

;Funcion para calcular el volumen de una piramide de base cuadrada
; x l h => #
;donde es el lado de la base y h es la altura de la piramide
;ejemplo (x 3 6) => 18
;cuerpo
(define (x l h)(/ (* l l h) 3))
;prueba
(x 3 6)