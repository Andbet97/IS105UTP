;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 23|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Dada una fecha calcular el número de dias que han transcurrido desde el 1 de enero de 2000. La fecha tiene 3 parámetros: dia, mes y año. Si la fecha es anterior debe mostrar un mensaje de error.
;Resolverlo de forma recursiva. Tenga en cuenta que si el año es divisible por 4 es bisiesto.

;(fecha a d c)=> #
;donde a es el dia b es el mes y c el año 

(define (años b c d)
(cond
  ((not (= c 2000))  (años b (- c 1) (+ d 365))    )
  ((or (= b 1)(= b 3) (= b 7)(= b 8) (= b 10)(= b 12) ) (años  (- b 1) c (+ d 31))       )
  ((or (= b 4)(= b 5)(= b 6)(= b 9)(= b 11)) (años  (- b 1) c (+ d 30))    )
  ((= b 2) (años  (- b 1) c (+ d 29)))
  (else (begin (display "han transcurrido ")(display d)(display " días")))
  )
 )
(define (fecha a b c )
  (if (>= c 2000)
  (años (- b 1) c  (+ (- a 1)
                       (quotient(- c 2000) 4)
                     (if (or (> c 2000)(> b 2)) 1 0))   )
                      (display "el programa calcula a partir del 2000, porfavor digite un valor correcto "))
   )
;llamado
(display "ingrese la fecha en formato Dia Mes Año ")
(newline)
(define dia (read))
(define mes (read))
(define año (read))
(fecha dia mes año )
