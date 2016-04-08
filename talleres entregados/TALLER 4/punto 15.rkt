;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 15|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;elabore un programa que lea un numero que determine si es positivo o no, y si es par o no

;funcion que determine si es positivo o no, impar o par un numero
;--------------------------------------------------------------------------------------------
(define (numero a )
  (if (= (modulo a 2) 0)
      (cond ((> a 0)(display "el numero es par y es positivo"))
            (else (display "el numer es par y es negativo"))
            )
      (cond ((> a 0)(display "el numero es impar y es positivo"))
            (else (display "el numer es impar y es negativo"))
            )
      )
  )
;llamado
(display "ingrese el numero ")
(define num (read))
(numero num)
  