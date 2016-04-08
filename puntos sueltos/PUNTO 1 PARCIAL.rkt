;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |PUNTO 1 PARCIAL|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Elaborar una función que le entre un numero positivo  y determinar si es de 1, 2, 3 o 4 dígitos(Usando Cond)
;------------------------------------------------------------------------------------------------------------------------
;función que deterine el número de dígitos de un número
;(digito n)=> el número de dígitos que tiene n
;donde n es el número del cual queremos saber su número de dígitos
;cuerpo 
(define (digito n)
             (cond ((and (> n 0)(< n 10))
                 (display "El número es de un dígito")
                 )
                ((and (>= n 10)(< n 100))
                 (display "El número es de dos dígitos")
                 )
                ((and (>= n 100)(< n 1000))
                 (display "El número es de tres dígitos")
                 )
                ((and (>= n 1000)(< n 10000))
                 (display "El número es de cuatro dígitos")
                 )
                (else 
                   (display "El número tiene mas de cuatro dígitos")
                 )
             )
)
;llamado
(display "Programa para determinar el número de dígitos de un número positivo")
(newline)
(display "Ingrese el número ")
(define num (read))
(digito num)