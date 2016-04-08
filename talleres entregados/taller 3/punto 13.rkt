;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CALCULAR EL AREA EXTERIOR DE LA PIRAMIDE DE UNA PIRAMIDE DE BASE CUADRADA

;Calcular el area exterior de la piramide de una piramide de base cuadrada
; x l h => #
;donde l es el lado de la base y h es la altura de la piramide
;ejemplo (x 6 4) => 96
;cuerpo
(define (x l h)
  (+(expt l 2)(/ (* (* 4 l) (sqrt (+ (expt (/ l 2) 2)(expt h 2)))) 2)))
;prueba
(x 6 4)