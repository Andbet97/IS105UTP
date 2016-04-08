;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CALCULAR EL AREA DE UN CIRCULO

;Calcular el area de un circulo
; x r => #
;donde r es el radio de la circunferencia
;ejemplo (x 5) => 78.54
(define (x r)(* vpi r r))
(define vpi 3.1416)
;prueba
(x 5)