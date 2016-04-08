;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 22|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;22. Escriba un programa para caso planteado, que permita calcular el valor del que se dispondrá, después de N periodos mensuales en el que un capital C,
;ha estado siendo incrementado por una tasa de interés mensual R. Se presentan dos casos:
;a. Interés simple: El capital no se incrementa con el interés mensual, es decir el interés pagado es el mismo para cada periodo mensual.
;b. Interés Compuesto: El interés mensual se le vá sumando al capital, de tal forma que el interés pagado va aumentando mes a mes

;(intere c i m t a)=> #
;donde e es el capital, i es la eleccion del interes, m son los meses que han pasado y a es un acumulado


(define (interes c i m t a)
  (cond ((and (= i 1)(> m 0))(interes c i (- m 1) t (+ a (* t c))))
        ((and (= i 2)(> m 0))(interes (+ c(* c t)) i (- m 1) t a))
         (else (+ c a)
      )))
;llamdo
(display "elija que interes desea conocer ")
(newline)
(display "para interes simple, presione 1 ")
(newline)
(display "para interes compuestos, presione 2 ")
(newline)
(define intrs (read))
(display "indique la tasa de interes que maneja el banco ")
(newline)
(define tas (read))
(newline)
(display "ingrese cuantos meses han pasado ")
(newline)
(define mes (read))
(newline)
(display "ingrese el monto inicial de su cuenta ")
(newline)
(define moneda (read))
(display "el valor a pagar es de ")
(interes moneda intrs mes tas 0)