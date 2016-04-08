;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 21|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;DADAS CANTIDADES DE BILLETES RECIBIDOS EN DENOMINACIONES DE
;1000, 2000, 5000, 10000, 20000 Y 50000 OBTENER COMO RESULTADO EL VALRO DEL CONJUNTO DE TODOS LOS BILLETES

;Dadas cantidades de billetes recibidos en denominaciones de
;1.000, 2.000, 5.000, 10.000, 20.000 y 50.000, obtener como resultado el valor de del conjunto de todos los billetes.
; recaudo_total a b c d e f => #
;donde a es la cantidad de billetes de 1000, b la cantidad de billetes de 2000
;c es la cantidad de billetes de 5000, d la cantidad de billetes de 10000
;e la cantidad de billetes de 20000 y f la cantidad de billetes de 50000
;ejemplo (x 10 5 20 6 15 6) => 780000
;cuerpo
(define (x a b c d e f)
  (+ (* a 1000)(* b 2000)(* c 5000)(* d 10000)(* e 20000)(* f 50000)))
;prueba
  (x 10 5 20 6 15 6)