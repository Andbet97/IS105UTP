;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 36|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Calcule el valor de la desviación estándar de los cubos de los números naturales que hay entre M y N. Siendo M y N diferentes.
;Tenga en cuenta el límite inferior pero no el límite superior.

;(desviacion m n)=>
;donde m es el primer numero y n el segundo

(define (cubo m n a)
  (cond( (> m (+ 1 n))
      (cubo (- m 1) n (+ a (expt (- m 1)3)))
      )
      ((> n (+ 1 m))
            (cubo m (- n 1)(+ a (expt (- n 1)3)))
            )
          ((> m n) (+ a (expt num1 3)))
          (else (+ a (expt num1 3)))
          )
      )
;funcion para determinar la suma de los cubos incluyendo el menor de los numeros
;---------------------------------------------------------------------------------------------------------------------------
(define (entre m n x y)
  (cond( (> m (+ 1 n))
      (entre (- m 1) n (+ x(- m n))(+ y 1))
      )
      ((> n (+ 1 m))
            (entre m (- n 1)(+ x(- n m))(+ y 1))
            )
          (else (+ 1 y) )
          )
      )
;funcion para calcular la cantidad de numero qye hay entre dos numeros mas el numero menor
;----------------------------------------------------------------------------------------------------------------------------
(define (promedio m n)
  (/ (cubo m n 0)(entre m n 0 0))
  )
;funcion que calcula el promedio de los cubos que hay entre dos numeros inclyendo el menorr
;-------------------------------------------------------------------------------------------------------------------------------
(define (varianza m n z)
  (cond( (> m n)
      (varianza m  ( + n 1) (+ z (expt (- (expt n 3) (promedio num1 num2)) 2)))
      )
      ((> n  m)
            (varianza (+ m 1) n (+ z (expt (- (expt m 3) (promedio num1 num2)) 2)))
            )
          
          (else  z )
          )
      )
;funcion para calcular la varianza
;-------------------------------------------------------------------------------------------------------------------------------
  (define (desviacion m n)
    (display (sqrt (/ (varianza m n 0)(- (entre m n 0 0) 1))))
    )
;llamado
(display "ingrese el primer numero ")
(define num1 (read))
(newline)
(display "ingres el segundo numero ")
(define num2 (read))
(newline)
(display "la desviacion es de ")
(desviacion num1 num2 )