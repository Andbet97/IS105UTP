;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 2(con if)|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Desarrolle una funcion llamada soluciones que reciba los coeficientes a, b, c de una ecuacion
;ax^2+bx+c=0 y determine todas las soluciones la ecuacion suponiendo que a no es 0
(define (soluciones a b c)
  (if (> (expt b 2)(* 4 a c))
      (begin
        (display "x1= ")
        (display (/ (+ (- b)(sqrt (- (expt b 2)(* 4 a c)))) (* a 2)))
        (newline)
        (display "x2= ")
        (display (/ (- (- b)(sqrt (- (expt b 2)(* 4 a c)))) (* a 2)))
       )
      (if (= (expt b 2)(* 4 a c))
             (begin
             (display "x1=x2= ")
             (/ (- b)(* 2 a))
             )
             (display "no tiene solucion")
      )
   )
 )
 
;prueba
(soluciones 2 4 2)
(newline)
(soluciones 6 4 3)
(newline)
(newline)
(soluciones 6 4 -3)