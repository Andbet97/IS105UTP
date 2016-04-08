;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Calcular el total que una persona debe pagar en una llanteria, si el precio de
;cada llanata es de $30000 si se compran menos de 5 llantas y de $20000 si se
;compran 5 o mas

;Determinar el valor total a pagar llantas
(define (llantas n)
  (if (>= n 5)
      (* n 20000)
      (* n 30000)
      )
  )
;llamado
(display "Numero de llantas")
(llantas (read))