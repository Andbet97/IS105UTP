;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 17|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Lea un numero, evalue que sea positivo y maximo de 2 digitos, encuentre la suma de los
;digitos que componen el numero

;funcion para hallar la suma de lis digitos de un numero de dos digitos positivo
;-------------------------------------------------------------------------------------------
;funcion para hallae el cociente
(define (cociente a)
  (quotient a 10))
;-------------------------------------------------------------------------------------------
;funcion para hallar el residuo
(define (residuo a)
  (modulo a 10))
;-------------------------------------------------------------------------------------------
(define (digito a)
  (if (and (> a 0)(< a 10))
      (begin
        (display "la suma de los digitos es ")
        a
        )
      (if(and (> a 10)(< a 100))
         (begin
           (display "la suma de los digitos es ")
         (+ (cociente a)(residuo a))
         )
         (display "el numero tiene mas de dos digitos")
       )
  )
  )
;llamado
(display "ingrese el numero ")
(define num (read))
(digito num)