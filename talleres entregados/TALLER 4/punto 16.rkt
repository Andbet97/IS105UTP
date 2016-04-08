;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 16|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Lea dos numeros, restelos si el primero e mayor que el segundo, multipliquelos si
;el segundo numero es multiplo de 3 y sumelos si ambos son iguales

;funcion
(define (numero a b)
  (cond ((> a b )
         (begin
           (display a)
           (display ">")
           (display b)
           (newline)
         (- a b))
         )
        ((=(modulo b 3) 0)
         (begin
           (display b)
           (display " es multiplo de 3 ")
         (* a b ))
         )
        ((= a b )
         (begin
           (display "los numeros son iguales ")
         (+ a b))
         )
        (else
         (display "No aplica ninguna operacion con estos numeros")
         )
        )
  )
;llamado
(display "intoduzca el primer numero ")
(define num1 (read))
(newline)
(display "introduzaca el segundo numero ")
(define num2 (read))
(numero num1 num2)