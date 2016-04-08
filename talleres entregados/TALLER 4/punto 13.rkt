;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Lea dos numeros realice la suma del doble del primero si este se encuentra entre 10 y 100
;mas el cuadrado del segundo si esta entre 50 y 1000

;funion suma
;(suma a b )=>#
;donde a y b son los numeros a sumar
;-----------------------------------------------------------------------------------------
(define (suma a b)
  (if (and (> a 10)(< a 100)
           (> b 50)(< b 1000)
           )
      (+ (* a 2)(expt b 2))
      (+ a b)
      )
  )
;llamado
(display "ingrese el primer numero ")
(define num1 (read))
(newline)
(display "ingrese el segundo numero ")
(define num2 (read))
(suma num1 num2)