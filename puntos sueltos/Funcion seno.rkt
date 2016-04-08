;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Funcion seno|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
 (define(misin x i f acu)
  (sumatoria x i f acu)  
   )


(define(sumatoria x i f acu)
  (if(<= i x)
     (sumatoria x(+ x 1) x (+ acu (funcion x)))
(begin
(display"El seno de n es: ")
  (display acu))
     
       )
     )

  (define (funcion x)
   (*(/(expt -1 x)(Factorial x))(expt x (+(* 2 x) 1)))
    )

 
  (define(Factorial x)
  (begin
  (if(< x 2)
   1
  (+(* 2 x (Factorial(- x 1)))1)
  )
)
  )
    
  ;llamado
(display"Ingrese el numero")
(newline)
(misin (read) 1 5 0)

