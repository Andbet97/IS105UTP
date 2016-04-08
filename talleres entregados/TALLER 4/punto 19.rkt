;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Realice un programa que a partir de un numero determine el promedio de sus digitos.

;funcion para determinar el promedio de un numero de hasta 5 digitos
;(promedio n)=>#
;donde n es el numero que se promediara
;--------------------------------------------------------------------------------------------
;funcion para hallar el cociente de un numero de 5 digitos
(define (coc5 n)
  (quotient n 10000))
;--------------------------------------------------------------------------------------------
;funcion para hallar el residuo de un numero de 5 digitos
(define (res5 n)
  (modulo n 10000))
;--------------------------------------------------------------------------------------------
;funcion para hallar el cociente de un numero de 4 digitos
(define (coc4 n)
  (quotient n 1000))
;--------------------------------------------------------------------------------------------
;funcion para hallar el residuo de un numero de 4 digitos
(define (res4 n)
  (modulo n 1000))
;--------------------------------------------------------------------------------------------
;funcion para hallar el cociente de un numero de 3 digitos
(define (coc3 n)
  (quotient n 100))
;--------------------------------------------------------------------------------------------
;funcion para hallar el residuo de un numero de 3 digitos
(define (res3 n)
  (modulo n 100))
;--------------------------------------------------------------------------------------------
;funcion para hallar el cociente de un numero de 2 digitos
(define (coc2 n)
  (quotient n 10))
;--------------------------------------------------------------------------------------------
;funcion para hallar el residuo de un numero de 2 digitos
(define (res2 n)
  (modulo n 10))
;--------------------------------------------------------------------------------------------
(define (promedio n)
  (if (and (< n 100000)(>= n 0))
      (cond ((and(< n 10)(>= n 0))
             (begin
             (display "El promedio de los numeros es de ")
             n
             ))
            ((and(< n 100)(>= n 10))
             (begin
             (display "El promedio de los numeros es de ")
            (/(+ (coc2 n) (res2 n)) 2)
            )
             )
            ((and(< n 1000)(>= n 100))
             (begin
             (display "El promedio de los numeros es de ")
            (/(+ (coc3 n) (coc2 (res3 n))(res2 n)) 3)
            )
             )
            ((and(< n 10000)(>= n 1000))
             (begin
             (display "El promedio de los numeros es de ")
            (/(+ (coc4 n) (coc3 (res4 n))(coc2 (res3 n))(res2 n)) 4)
            )
             )
            (else
             (begin
             (display "El promedio de los numeros es de ")
            (/(+ (coc5 n) (coc4 (res5 n))(coc3 (res4 n))(coc2 (res3 n))(res2 n)) 5)
            )
             )
            )
      (display "El numero tiene mas de 5 digitos ")
      )
  )
;llamado
(display "Programa que promedia los digitos de un numero maximo de 5 digitos")
(newline)
(display "Ingrese el numero ")
(define num (read))
(promedio num)