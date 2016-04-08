;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;lea dos numeros multipliquelos y muestre su resultado, solo si el segindo numero es negativo

;funcion para multiplicar dos numeros
;(producto a b )
;donde a es un numero natural y b es un numero natural negativo
;---------------------------------------------------------------------------------
(define (producto a b )
  (if (< b 0)
      (* a b)
      (display "el segundo numero no es negativo")
      )
  )
;llamado
(display "Programa para multiplicar dos numeros, siendo el segundo extrictamente negativo")
(newline)
(display "ingrese el primer numero ")
(define num1 (read))
(newline)
(display "ingrese el segundo numero ")
(define num2 (read))
(producto num1 num2)