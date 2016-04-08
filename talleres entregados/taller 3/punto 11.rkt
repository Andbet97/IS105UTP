;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CALCULAR EL VOLUMEN DE UNA ESFERA

;Funcion para calcular el volumen de un esfera
; x r => #
;donde r es el radio de la esfera
;ejemplo (x 5) => 523.6
;cuerpo
(define vpi 3.1416)
(define (x r)(*(/ 4 3) vpi (expt r 3)))
;prueba
(x 5)