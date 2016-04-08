;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 14|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Lea dos numeros distintos, valide que no sean iguales y determine cual es el mayor

;determinar que un numero es mayor que otro
(define (mayor a b)
  (cond ((< a b)
         (begin
        (display a)
         (display "<" )
         (display b)
         )
         )
        ((> a b)
         (begin
         (display a)
         (display ">" )
         (display b)
         )
         )
        (else
         (begin
         (display a)
         (display "=" )
         (display b)
         )
         )
        )
  )
;llamado
(display "inrese el primer numero ")
(define num1 (read))
(newline)
(display "ingrese el segundo numero ")
(define num2 (read))
(mayor num1 num2)
        
            