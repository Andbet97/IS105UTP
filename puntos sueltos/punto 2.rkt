;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
 (define(misin x i acu)
  (sumatoria x i  acu)  
   )


(define(sumatoria x i  acu)
  (if(<= i x)
     (sumatoria x (+ x 1)  (+ acu (funcion x)))
(begin
(display"El seno es: ")
  (display acu))
     
       )
     )

  (define (funcion x)
   (*(/(expt -1 x)(mifactor (+ (* 2 x) 1))(expt x (+(* 2 x) 1))))
    )

 
 (define (factorial num cont acum)
  (if (<= cont num)  
      (factorial num (+ cont 1)(* acum cont))
      acum       
  )
)
 (define (mifactor num)
  (factorial num 1 1 )
) 
    
  ;llamado
(display"Ingrese el numero")
(newline)
(misin (read) 1  0)

