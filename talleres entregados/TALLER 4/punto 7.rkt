;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Calcular la utilidad qu un trabajador recibe en el reparto anual de utilidades
;si este se le asigna como un porcejtaje de su salario mensual que 
;depende de su antiguedad en la empresa

;funcion para determinar la utilidad de un trabajador
;(utilidad tiempo salario)=> #
;donde "tiempo" es el tiempo en años que lleva en la empresa y "salario" es su mensualidad
(define (utilidad tiempo salario)
    (if (and (> tiempo 0)(< tiempo 1)
         )
        (begin 
          (display "su utilidad es de ")
        (* salario 0.05)
         )
         (if (and (>= tiempo 1)(< tiempo 2)
         )
        (begin 
          (display "su utilidad es de ")
        (* salario 0.07)
         )
        (if (and (>= tiempo 0)(< tiempo 5)
         )
        (begin 
          (display "su utilidad es de ")
        (* salario 0.1)
         )
         (if (and (>= tiempo 5)(< tiempo 10)
         )
        (begin 
          (display "su utilidad es de ")
        (* salario 0.15)
         )
         (begin 
         (display "su utilidad es de ")
         (* salario 0.2)
)
)
)
)
)
  )
;llamado 
(display "Calcular la utilidad anual de un trabajador")
(newline)
(display "Ingrese el tiempo en años que lleva trabajando en la empresa")
(define tem (read))
(newline)
(display "Ingrese el valor de su salario mensual ")
(define salr (read))
(utilidad tem salr)