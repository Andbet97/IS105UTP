;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 35|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Calcule la suma de los cubos de los números naturales que hay entre M y N. Siendo M y N diferentes. No tenga en cuenta los límites.

(define (cubo m n a)
  (cond( (> m (+ 1 n))
      (cubo (- m 1) n (+ a (expt (- m 1)3)))
      )
      ((> n (+ 1 m))
            (cubo m (- n 1)(+ a (expt (- n 1)3)))
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
(display "la suma de los cubos entre estos numeros es de ")
(cubo num1 num2 0)