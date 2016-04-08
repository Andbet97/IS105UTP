;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;leer un numero y escribir el valor absoluto del mismo
;funcion para hallar el valor absoluto de un numero

; absoluto n =>
;donde n es el numero
(define (absoluto n)
  (if (>= n  0)
     n
     (* n (- 1))
  )
)
;llamado
(display "programa para determinar el valor absoluto de un numero")
(newline)
(display "ingrese el numero")
(newline)
(absoluto (read))
