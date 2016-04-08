;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;DADO UN VALOR DE TEMPERATURA EN GRADOS FAHRENHEIT, CONVIERTIRLA A GRADOS CELSIUS

;Dado un valor de temperatura en grados fahrenheit, convertirla a grados celsius
; x n => #
;donde n es el valor de grados en fahrenheit y # es el vañlor correspondiente en grados celsius
;ejemplo (x 140) => 60
;cuerpo
(define (x n)(/ (- n 32) 1.8))
;ejemplo
(x 140)