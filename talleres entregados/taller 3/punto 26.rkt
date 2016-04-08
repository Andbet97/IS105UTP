;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 26|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;SI LA PROBABILIDAD DE QUE CAIGA 6 AL LANZAR UN DADO ES DE 1/6, CUAL ES LA PROBABILIDAD DE QUE CAIGA 6 EN TODOS LOS n LANZAMIENTOS DE UN DADO

;Si la probabilidad de que caiga 6 al lanzar un dado es de 1/6, cual es la probabilidad
;de que caiga 6 en todos los n lanzamientos de un dado
; x n => #
;donde n es el numero de veces que se lanza el dado y # el porcentaje de la probabilidad
; ejemplo (x 4) => 0.077160493
;cuerpo
(define (x n)(* (/ 1 (expt 6 n)) 100))
;prueba
(x 4)