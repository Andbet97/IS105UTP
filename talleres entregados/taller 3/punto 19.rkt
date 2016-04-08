;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CONVERTIR DE MILLAS A YARDAS

;Funcion para convertir millas a yardas
; x n => #
;doonde n es la cantidad en millas y # el resultado en yardas
;ejemplo (x 50) => 88000
;cuerpo
(define (x n)(* n 1760))
;prueba
(x 50)