#lang racket

#|3. Realizar una función que toma unelemento y una lista de números y retorna la
 lista sin el elemento.|#

(display "ingrese la lista ")
(define lista1 (read))
;lee la lista con un read, hay que escribir con parentesis IMPORTANTE.
;-------------------------------------------------------------------------------------
(display "ingrese el numero a eliminar ")
(define x (read))
;lee el numero a eliminar 
;-----------------------------------------------------------------------------------------
(define (eliminar x Lista1)
(if (null? Lista1) 
    (list)
(if (equal? x (car Lista1)) 
(eliminar x (cdr Lista1)) 
(cons (car Lista1) (eliminar x (cdr Lista1))))))

;llamado
(eliminar x lista1)