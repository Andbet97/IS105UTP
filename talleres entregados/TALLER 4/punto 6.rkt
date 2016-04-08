;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;tomando como base los resultados obtenidos en un analisis de laboratorio de
;analisis clinicos, un medico determina si la persona tien eanemia o no, lo cual
;depende de su nivel de hemoglobina en la sangre, de su edad. Si el nivel de
;hemoglobina que tiene una persona es menor que el rango que le corresponde,
;se determina su resultado como positivo y en caso contrario se determina como
;negativo

;cuerpo
(define (examen ed nh)
  (if (<= ed 15)
      (cond ((and (> ed 1)(<= ed 5)
                 (>= nh 11.5)(<= nh 15)
            )
            (display "No tiene anemia"))
            ((and (> ed 5)(<= ed 10)
                 (>= nh 12.6)(<= nh 15.5)
            )
            (display "No tiene anemia"))
            ((and (> ed 10)(<= ed 15)
                 (>= nh 13)(<= nh 15.5)
            )
            (display "No tiene anemia"))
            (else
                 (display "Tiene anemia")
            )  
      )
     (display "solo es para niños menores de 16 años")
  )
)
;llamado
(display "Examen para determinar si el paciente tiene anemia")
(newline)
(display "Ingrese la edad")
(define edad (read))
(newline)
(display "Entre el nivel de hemoglovina")
(define nivh (read))
(examen edad nivh)
            