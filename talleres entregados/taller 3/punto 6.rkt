;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;ENCONTRAR EL AREA DE UN ANILLO, CONOCIENDO EL RADIO INTERIOR Y EL EXTERIOR

;Encontrar el area de un anillo, conociendo el radio interior y el exterior
; area x r => #
;donde x es el radio exterior y r es el radio interior
;ejemplo (area 5 3) => 50.2656
;cuerpo
(define vpi 3.1416)
(define (area x r)(* vpi (- (expt x 2)(expt r 2))))
;ejemplo
(area 5 3)