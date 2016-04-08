;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 20|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer un programa que indique los pasos a seguir para resolver el problema de las torres de hanoi con n anillos.

;(hanoi n a b c )=> serie de pasos
;donde n es el numero de anillos o discos a es la primer columna b es la segunda y c es la tercera

(define (hanoi n a b c)
  (if (= n 1)
      (begin 
        (display "Mueva el disco de ")
        (display a) 
        (display " a " )
        (display b)
        (newline)
        )
      (begin 
        (hanoi (- n 1) a c b)
        (display "Mueva el disco de ") 
        (display a)
        (display " a ")
        (display b)
        (newline)
        (hanoi (- n 1) c b a)
        )
      )
  )

;llamdo
(display "El siguiente programa imprimira los pasos a seguir para resolver ")
(newline)
(display "la torre de hanoi con n discos, recuerde que si se le indica mover ")
(newline)
(display "un disco se movera el que esta de primero en cada columna.")
(newline)
(display "Las columnas estan en un orden 1 2 3 y los discos estaran uicados ")
(newline)
(display "en orden en la columna 1.")
(newline)
(display "Ingrese la cantidad de discos ")
(define num (read))
(newline )
(hanoi num 1 3 2)