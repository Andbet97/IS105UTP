;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;En una fabrica de computadoras se plantea ofrecer a los clientes un descuento 
;que depende del numero de computadoras que compre. Si las computadoras que compre 
;son menos de 5 se le dara un 10% de descuento sobre el total de la compra, si el numero 
;de computadoras es mayor o igual a 5 pero menor que 10 se le dara un descuento del 20%
;y si son 10 o mas se le dara un 40% de decuento. El precio de cada computadora 
;es de $1100000.

;funcion para hallar el precio a pagar segun las computadoras que compre
;(computadora n vlr)
;donde n es el numero de computadoras y vlr es el valor total de la compra
;------------------------------------------------------------------------------
;funcion para determinar el valor total de la compra
(define (vlr n)
  (* n 1100000))
;------------------------------------------------------------------------------
;funcion para hallar el 10% de descuento 
(define (desc10 n)
  (* (vlr n) 0.1))
;------------------------------------------------------------------------------
;funcion para hallar el 20% de descuento 
(define (desc20 n)
  (* (vlr n) 0.2))
  ;------------------------------------------------------------------------------
;funcion para hallar el 40% de descuento 
(define (desc40 n)
  (* (vlr n) 0.4))
;------------------------------------------------------------------------------
(define (computadora n )
    (cond ((< n 5)
         (begin
         (display "el valor de su compra es de ") (display (vlr n))
         (newline)
        (display "su descuento es del 10% ")
        (display (desc10 n))
        (newline)
        (display "el valor a pagar es ")
        (- (vlr n) (desc10 n))
        )
         )
        ((and(< n 10)(>= n 5))
         (begin
         (display "el valor de su compra es de ") (display (vlr n))
         (newline)
        (display "su descuento es del 20% ")
        (display (desc20 n))
        (newline)
        (display "el valor a pagar es ")
        (- (vlr n) (desc20 n))
        )
         )
        (else
         (begin
         (display "el valor de su compra es de ") (display (vlr n))
         (newline)
        (display "su descuento es del 40% ")
        (display (desc40 n))
        (newline)
        (display "el valor a pagar es ")
        (- (vlr n) (desc40 n))
        )
         )
        )
  )
;llamado 
(display "Tienda de computadores ltda")
  (newline)
  (display "Ingrese el la cantidad de computadores ")
  (define comp (read))
  (computadora comp)
        