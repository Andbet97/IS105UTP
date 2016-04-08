;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CONVERTIR DE YARDAS A PIES

;Funcion para convertir yardas a pies
; x n => #
;doonde n es la cantidad en yardas y # el resultado en pies
;ejemplo (x 90) => 270
;cuerpo
(define (x n)(* n 3))
;prueba
(x 90)