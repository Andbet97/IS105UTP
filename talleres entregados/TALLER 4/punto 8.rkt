;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Una persona se encuentra con un problema de comprar un automovil o un terreno,
;los cuales cuestan exactamente lo mismo. Sabe que mientras el automovil se devalua
;con el terreno sucede lo contrario. Esta persona comprara el automovil si al cabo de
;tres años la devaluacion de ese no es mayor que la mitad del incremento del
;valor del terreno.

;Determinar si debe o no comprar el carro
;cuerpo
(define (carro valor tiem)
  (cond ((< (* tiem (/ valor 5))(/(* valor 0.037 tiem)2))
         (display "debe comprar el carro")
         )
        (else
             (display "no debe comprar el carro")
        )
  )
)
;llamado
(display "determinar si debe o no comprar el carro")
(newline)
(display "ingrese el precio ")
(define precio (read))
(newline)
(display "ingrese los años ")
(define tiempo (read))
(carro precio tiempo)