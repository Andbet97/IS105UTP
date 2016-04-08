;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;DADO UN VALOR DE TEMPERATURA EN GRADOS CELSIUS, CONVIERTIRLA A GRADOS FAHRENHEIT

;Dado un valor de temperatura en grados celcius, convertirla a grados fharenheit
; x n => #
;donde n es el valor de grados en celsius y # es el vañlor correspondiente en grados fahrenheit
;ejemplo (x 45) => 113
;cuerpo
(define (x n)(+ (* 1.8 n) 32))
;ejemplo
(x 45)