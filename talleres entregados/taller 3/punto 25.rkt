;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 25|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;TENIENDO UN CUBO DE LADO n, CALCULAR CUAL ES EL VOLUMEN DE LA MENOR ESFERA QUE CONTIENE DENTRO EL CUBO

;Teniendo un cubo de lado n, calcular cual es el volumen de la menor esfera que contiene al cubo
; x n =>#
;donde n es el lado del cubo y # el volumen de la esfera
; ejemplo (x 3) => 73.45904603
;cuerpo
(define vpi 3.1416)
(define (x n)(/ (* 4 vpi (expt (/ (* n (sqrt 3)) 2) 3)) 3))
;prueba
(x 3)
