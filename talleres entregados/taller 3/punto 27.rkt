;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 27|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;SI LA PROBABILIDAD DE QUE CAIGA 6 AL LANZAR UN DADO ES DE 1/6, CUAL ES LA PROBABILIDAD DE QUE CAIGA AL MENOS UNA VEZ EN n LANZAMIENTOS DEL DADO

;Si la probabilidad de que caiga 6 al lanzar un dado es de 1/6, cual es la probabilidad
;de que caiga al menos una vez 6 en n lanzamientos del dado
; x n => #
;donde n es el numero de veces que se lanza el dado y # el porcentaje de la probabilidad
; ejemplo (x 4) => 66.6666666
;cuerpo
(define (x n)(* (/ n 6 ) 100))
;prueba
(x 4)