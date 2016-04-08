#lang racket

#|10) Hacer una función que reciba una cadena de caracteres e indique si es palíndrome.
Una cadena de caracteres es palíndrome si se lee igual al derecho que al revés.
Ejemplo: “ojo”, “abcdedcba”, “a”, “dabalearrozalazorraelabad”.|#

(display "ingrese la cadena a evaluar ")
(define cadena (read-line))

(define (string-reverse s)
  (list->string (reverse (string->list s))))

(if (equal? cadena (string-reverse cadena))
      (display "es palindorome")
      (display "no es palindrome")
      )
 
