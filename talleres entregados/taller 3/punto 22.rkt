;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 22|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;DE UNA SOLUCION PARA LA ECUACION ax^2+bx+c=0 para valores de a, b y c dados

;De una solucion para la ecuación ax^2+bx+c=0 para valores de a, b y c dados
; valor a b c => x
;donde a, b y c son los valores dados y x es el valor de x para cumplir la funcion
;ejemplo (cuadratica1 9 2 -4) => 0.564751392
;        (cuadratica2 9 2 -4) => -0.786973614
;cuerpo
(define (cuadratica1 a b c)
  (/ (+ (- b)(sqrt (- (expt b 2)(* 4 a c)))) (* a 2)))

(define (cuadratica2 a b c)
  (/ (- (- b)(sqrt (- (expt b 2)(* 4 a c)))) (* a 2)))
;prueba
(cuadratica1 9 2 -4)
(cuadratica2 9 2 -4)