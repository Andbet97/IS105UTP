;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 34|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Escriba un programa que calcule el valor promedio de los números naturales que existen entre dos límites dados. Debe considerar ambos límites.

(define (promedio m n x y a)
  (cond( (> m (+ 1 n))
      (promedio (- m 1) n (+ x(- m n))(+ y 1)(+ a (- m 1)))
      )
      ((> n (+ 1 m))
            (promedio m (- n 1)(+ x(- n m))(+ y 1)(+ a (- n 1)))
            )
      ((= m n) 0)
          (else  (/(+ a num1 num2)(+ y 2)))
          )
      )
;llamado
(display "ingrese el primer numero ")
(define num1 (read))
(newline)
(display "escriba el segundo numero")
(define num2 (read))
(newline)
(display "el promedio es de ")
(promedio num1 num2 0 0 0)