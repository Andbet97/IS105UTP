;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 28|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;7.	Construir un programa que dados dos enteros M y N diferentes, calcule la suma de los cuadrados 
;de los números que  hay entre ellos, sin incluirlos.

(define (cuadrado m n a)
  (cond( (> m (+ 1 n))
      (cuadrado (- m 1) n (+ a (expt (- m 1)2)))
      )
      ((> n (+ 1 m))
            (cuadrado m (- n 1)(+ a (expt (- n 1)2)))
            )
          (else (display a))
          )
      )
  
;llamado
(display "ingrese el primer numero ")
(define num1 (read))
(newline)
(display "ingres el segundo numero ")
(define num2 (read))
(newline)
(cuadrado num1 num2 0)