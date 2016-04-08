;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;En un supermercado se hace una promocion, mediante la cual el cliente obtiene
;un descuento dependiendo de un numero que se escoge al azar, si el numero
;escogido es menor que 74 el descuento sera del 15% sobre el total de la compra
;si es mayor o igual a 74 el descuento es del 20%.

;Descuento en el supermercado
(define (descuento numero vlr_compra)
  (if (>= numero 74)
      (begin
        (display "su descuento es del 20%")
        (newline)
        (display "el valor de descuento es de ")
        (* vlr_compra 0.2)
        )
      (begin
        (display "su descuento es del 15%")
        (newline)
        (display "el valor de descuento es de ")
        (* vlr_compra 0.15)
        )
      )
  )
;llamado 
(display "ingrese el numero escogido ")
(define num (read))
(display "ingrese el valor de la compra ")
(define vlr (read))
(descuento num vlr)
