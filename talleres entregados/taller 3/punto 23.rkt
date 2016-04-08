;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 23|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;TENIENDO LOS LADOS DE UN TRIANGULO RECTANGULO, ENCONTRAR EL VALOR DE LA HIPOTENUSA

;Funcion para hallar la hipotenusa de un triangulo rectangulo
; x a b => h
;donde a y b son los catetos y h es la hipotenusa del triangulo
;ejemplo (x 5 9) => 10.29563014
;cuerpo
(define (x a b)(sqrt(+ (expt a 2)(expt b 2))))
;prueba
(x 5 9)