;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;desarrolle un programa que determine cunto se tendria ahorrado despues de 10 años
;a partir de un ahorro inicial y considerando que la tasa de interes mensual es de un
;3% capitalizable cada mes, es decir que al capital se le agragan los intereses

;funcion para determinar el ahorro
;(ahorro vlrinicial)=>$
;donde vlrinicial es el valor del ahorro inicial
;-----------------------------------------------------------------------------------------------
;funcion para el interes
(define interes (* 120 0.03))
;-----------------------------------------------------------------------------------------------
(define (ahorro vlrinicial)
  (begin
  (display "el ahorro total es de ")
  (+ vlrinicial (* vlrinicial interes))
  )
  )
;llamado
(display "ingrese el valor inicial del ahorro ")
(define cuota1 (read))
(ahorro cuota1)