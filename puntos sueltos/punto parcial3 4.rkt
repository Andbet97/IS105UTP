#lang racket

#|4. Hacer un menú que llame los anteriores programas.|#

(define (menu o)
  (cond [(= o 1)(begin 
                (define (caracter a)
                (begin
                (display "Ingrese el caracter ")
                (display a)
                (display " ")
                (string-ref (read-line) 0))
         )


               (define (cadena_aux n x)
               (if (<= 0 x)
               (begin
               (string-set! cadena n (caracter n))
               (cadena_aux (+ n 1) (- x 1))
         )
               (begin
               (display "La cadena es: ")
               cadena))
        )
 
               ;llamado
              (display "De cuantos caracteres desea la cadena ")
              (define cadena (make-string (string->number (read-line)) ))
              (cadena_aux 0 (- (string-length cadena) 1)) )]
        [(= o 2)(begin 
                (define (numero z)
                (vector-ref (make-vector 1 (random 10)) 0)
              )
  
 
               (define (vector_aux y u)
                       (if (<= 0 u)
                       (begin
                       (vector-set! vector1 y (numero y))
                       (vector_aux (+ y 1) (- u 1))
                     )
                    (display " "))
               )

               (display "De cuantos enteros desea el vector ")
               (define vector1 (make-vector (read)))
               (vector_aux 0 (- (vector-length vector1) 1))
               (display vector1)
               (newline)
               (display "Ingrese el numero a buscar ")
               (define entero (read))

               (define (buscar l)
               (if (and (>= l 0)(< l (vector-length vector1)))
                  (if (equal? (vector-ref vector1 l) entero)
                  (begin
                  (display "El numero esta, y se encuentra en la posicion ")
                   l)
              (buscar (+ l 1))
             )
           "El numero no se encuentra en el vector"
           )
       )
          ;llamado
         (buscar 0))]
        [(= o 3) (begin 
                 (display "Ingrese la lista ")
                 (define lista1 (read))

                 (display "Ingrese el numero a eliminar ")
                 (define p (read))

                 (define (eliminar p Lista1)
                 (if (null? Lista1) 
                     (list)
                     (if (equal? p (car Lista1)) 
                         (eliminar p (cdr Lista1)) 
                         (cons (car Lista1) (eliminar p (cdr Lista1))))))

                ;llamado
               (eliminar p lista1))]
        [else (display "Ingrese una opcion correcta.")]))

(display "BIENVENIDO")
(newline)
(display "¿Qué programa desea ejecutar?")
(newline)
(display "1.Crear una cadena introduciendo la longitud y los caracteres.")
(newline)
(display "2.Buscar un numero n en un vector.")
(newline)
(display "3.Eliminar elemento de un lista.")
(newline)
(menu (string->number (read-line)))
