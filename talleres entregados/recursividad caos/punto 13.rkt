;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;13.Hacer un programa que reciba un número. 
;Si el número es menor o igual que 5: imprime los números del 1 al 5.
;Si el número es mayor que 5 y menor o igual que 10: imprime los números del 5 al 10.
;Si el número es mayor que 10: imprime los números del 10 al 20. 
;-------------------------------------------------------------------------------------------------------------------------
;conteo de 1 a 5
(define (conteo n )
  (if (< n 5)
      (begin
        (display n)
        (newline)
        (conteo (+ n 1))
        )
      (display 5)
      )
  )

;-------------------------------------------------------------------------------------------------------------------------
;conteo de 5 a 10
(define (conteo1 n )
  (if (< n 10)
      (begin
        (display n)
        (newline)
        (conteo1 (+ n 1))
        )
      (display 10)
      )
  )
;-------------------------------------------------------------------------------------------------------------------------
;conteo de 10 a 20
(define (conteo2 n )
  (if (< n 20)
      (begin
        (display n)
        (newline)
        (conteo2 (+ n 1))
        )
      (display 20)
      )
  )
;-------------------------------------------------------------------------------------------------------------------------
(define (num n )
  (cond ((and (< 0 n)(<= n 5))
         (conteo 1))
        ((and (< 5 n)(<= n 10))
         (conteo1 5))
        ((> n 10)
         (conteo2 10))
        )
  )
;llamado
(display "ingrese un numero ")
(define numer (read))
(newline)
(num numer)
     