;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 15|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CALCULAR EL AREA DE LA SUPERFICIE DE UN CILINDRO

;Funcion para calcular el area de la superficie de un cilindro
; x r h => #
;donde r es el radio de la circunferencia de la base y h es la altura del cilindro
; ejemplo (x 6 15)=> 791.6832
;cuerpo
(define vpi 3.1416)
(define (x r h)(+ (* 2 vpi (expt r 2))(* 2 vpi r h)))
;prueba
(x 6 15)