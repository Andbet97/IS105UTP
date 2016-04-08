#lang racket

#|1. Hacer una función que reciba un valor entero N y devuelva un vector de tamaño N,
donde cada posición contiene el valor -1.|#

(display "ingrese el valor entero ")
(define vector (make-vector (read) 1))
(display "el vector es ")
vector