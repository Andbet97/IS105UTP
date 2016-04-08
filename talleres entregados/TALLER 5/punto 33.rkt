;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 33|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Construya un programa que imprima las tablas de la suma para cada número natural que existe entre dos números M y N diferentes.
;Incluya los dos números límites. Imprima los primeros 15 elementos de cada tabla.

;(tabalasuma m n z)=>

;donde m es el primer numero y n el segundo y z es un acumulado

(define (tablasuma2 m n z)
   (if (> z 0)
       (begin
         (display "    ")
        (display m)
        (tablasuma2 (+ m 1) n (- z 1))
        )
        (tablasuma num2 num1 14)
      )
  )


(define (tablasuma m n z)
   (if (> z 0)
       (begin
         (newline)
        (display m)
        (display " |  ")(display (+ num2 n))
        (display " |  ")(display (+ num2 (+ n 1)))
        (display " |  ")(display (+ num2 (+ n 2)))
        (display " |  ")(display (+ num2 (+ n 3)))
        (display " |  ")(display (+ num2 (+ n 4)))
        (display " |  ")(display (+ num2 (+ n 5)))
        (display " |  ")(display (+ num2 (+ n 6)))
        (display " |  ")(display (+ num2 (+ n 7)))
        (display " |  ")(display (+ num2 (+ n 8)))
        (display " |  ")(display (+ num2 (+ n 9)))
        (display " |  ")(display (+ num2 (+ n 10)))
        (display " |  ")(display (+ num2 (+ n 11)))
        (display " |  ")(display (+ num2 (+ n 12)))
        (display " |  ")(display (+ num2 (+ n 13)))
        (display " |  ")(display (+ num2 (+ n 14)))
        (newline)
        (tablasuma (+ m 1) (+ n 1) (- z 1))
        )
        (begin
          (newline)
        (display m)
        (display " |  ")(display (+ num2 n))
        (display " |  ")(display (+ num2 (+ n 1)))
        (display " |  ")(display (+ num2 (+ n 2)))
        (display " |  ")(display (+ num2 (+ n 3)))
        (display " |  ")(display (+ num2 (+ n 4)))
        (display " |  ")(display (+ num2 (+ n 5)))
        (display " |  ")(display (+ num2 (+ n 6)))
        (display " |  ")(display (+ num2 (+ n 7)))
        (display " |  ")(display (+ num2 (+ n 8)))
        (display " |  ")(display (+ num2 (+ n 9)))
        (display " |  ")(display (+ num2 (+ n 10)))
        (display " |  ")(display (+ num2 (+ n 11)))
        (display " |  ")(display (+ num2 (+ n 12)))
        (display " |  ")(display (+ num2 (+ n 13)))
        (display " |  ")(display (+ num2 (+ n 14)))
          )
      )
  )
;llamado
(display "ingrese los dos numeros ")
(define num1 (read))
(define num2 (read))
(tablasuma2 num1 num2 15)
