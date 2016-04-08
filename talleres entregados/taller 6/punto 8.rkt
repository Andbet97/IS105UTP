#lang racket

#|8) Hacer una función que reciba una cadena de caracteres y devuelva otra sin las vocales.|#

(display "ingrese la cadena ")
(define cadena (read-line))
(define (cont a x)
  (if (>= a 0)
       (if (or (equal? (string-ref cadena a) #\a)
               (equal? (string-ref cadena a) #\e)
               (equal? (string-ref cadena a) #\i)
               (equal? (string-ref cadena a) #\o)
               (equal? (string-ref cadena a) #\u))
        (cont (- a 1) (+ x 1))
        (cont (- a 1) x ))
        x)
  )
(define a  (- (string-length cadena)1 ))
;funcion que me dice cuantas vocales tiene la cadena
;-----------------------------------------------------------------------------------------------
(define x1 (- (string-length cadena) (cont a 0)))
;funcion que determina el tamaño de la nueva cadena
;-----------------------------------------------------------------------------------------------
(define nuevacadena (make-string x1))
;funcion que me crea una cadena que solo contendra consonantes
;------------------------------------------------------------------------------------------
(define (string-reverse s)
  (list->string (reverse (string->list s))))
;funcion que invierte una cadena
;------------------------------------------------------------------------------------------------
(define (intercambio a n)
  (if (>= a 0)
       (if (or (equal? (string-ref cadena a) #\a)
               (equal? (string-ref cadena a) #\e)
               (equal? (string-ref cadena a) #\i)
               (equal? (string-ref cadena a) #\o)
               (equal? (string-ref cadena a) #\u))
        (intercambio (- a 1) n)
        (begin
          (string-set! nuevacadena n (string-ref cadena a))
          (intercambio (- a 1)(+ n 1))
          )
        )
       (string-reverse nuevacadena)
  )
  )
;funcion que cambia en una nueva cadena los valores vacios por las consonantes que hay
;------------------------------------------------------------------------------------------------
;llamado
(display "la cadena sin vocales es ")
(intercambio a 0)


