;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;MEDIR LA LONGITUD DE LA CIRCUNFERENCIA, DADO EL RADIO COMO PARAMETRO

;Medir la longitud del la ciercuferencia, dada el radio como parametro
; x r => #
;donde r es el radio de la circunferencia
;ejmplo (x 5) => 31.416
;cuerpo
(define vpi 3.1416)
(define (x r)(* 2 vpi r))
;prueba
(x 5)
