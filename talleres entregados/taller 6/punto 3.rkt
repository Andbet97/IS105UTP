#lang racket

#|3) Hacer una función que reciba un entero N y devuelva una cadena de longitud N, 
leyendo por pantalla cada uno de los N caracteres de la cadena.|#

;------------------------------
(define (caracter a)
  (begin
  (display "ingrese el digito ")
  (display a)
  (display " ")
  (string-ref (read-line) 0))
  )

;funcion que cambial el caracter en una posicion a
;---------------------------------------------------
(define (cadena_aux n x)
  (if (<= 0 x)
      (begin
      (string-set! cadena n (caracter n))
      (cadena_aux (+ n 1) (- x 1))
      )
      cadena)
  )
;funcion recursiva que cambia termino a termino las posiciones
;llamado-------------------------------------------------------
(display "de cuantos digitos desea la cadena ")
(define cadena (make-string (string->number (read-line)) ))
(cadena_aux 0 (- (string-length cadena) 1))