;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |puntos 9, 10 y 11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;9.	Escriba un programa que calcule la suma de los números que existen entre dos números dados.  Debe considerar ambos números.

(define (suma m n a)
  (cond( (> m (+ 1 n))
      (suma (- m 1) n (+ a (- m 1)))
      )
      ((> n (+ 1 m))
            (suma m (- n 1)(+ a (- n 1)))
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
(display "la suma de los numeros que hay entre estos dos numeros es ")
(suma num1 num2 0)
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;10.Escriba una función que calcule cuantos números naturales hay entre 2 números dados.

(define (entre m n x y)
  (cond( (> m (+ 1 n))
      (entre (- m 1) n (+ x(- m n))(+ y 1))
      )
      ((> n (+ 1 m))
            (entre m (- n 1)(+ x(- n m))(+ y 1))
            )
          (else (display y ))
          )
      )
;llamado
(newline)
(display "entre esllos hay ")
(entre num1 num2 0 0)
(display " numeros")
(newline)
  
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
;11.Escriba un programa que calcule el valor promedio de los números naturales que existen entre dos números dados.
;Debe considerar ambos números. (Use las dos funciones anteriores)

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
(newline)
(display "el promedio de los numero incluyendolos es de ")
(promedio num1 num2 0 0 0)