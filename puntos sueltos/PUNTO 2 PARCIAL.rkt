;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |PUNTO 2 PARCIAL|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Elaborar una función que le entre un numero entero  y si es múltiplo de 4 mostrar en pantalla su mitad, si es múltiplo de 5 mostrar en pantalla su cuadrado 
;y si es múltiplo de 6 mostrar en pantalla su cubo. Validar que el número no sea mayor que 100 (Usando If)
;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;función que determine si un número menor que 100 es múltiplo de 4, 5 ó 6
;(numero n)=> #
;donde n es el número entero 
;la función evalua primero si es múltiplo de 4, de no serlo evalua si es múltiplo de 5, asi mismo si no es múltiplo de 5 evalua si es múltiplo de 6
;si no cumple con ninguna de las anteriores no es multiplo de 4, 5 ó 6
;cuerpo

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;función que sirve para sacar la mitad a un número
(define (mitad n)
  (/ n 2))
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;función para determinar el cuadrado de un número 
(define (cuadrado n)
  (expt n 2))
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;función para determinar el cubo de un número 
(define (cubo n)
  (expt n 3))
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
(define (numero n)
  (if (< n 100)
      (if (= (modulo n 4) 0)
          (begin
           (display "Es multiplo de 4, su mitad es ")
         (mitad n))
          (if (= (modulo n 5) 0)
              (begin
                (display "Es múltiplo de 5, su cuadrado es ")
              (cuadrado n))
              (if (=(modulo n 6) 0)
                  (begin
                    (display "Es multiplo de 6, su cubo es ")
                  (cubo n))
                 (display "No es múltiplo de 4 ni de 5 ni de 6")
              )
          )
        )
      (display "El número es mayor que 100")   
   )
)
;llamado 
(display "Determinar si un número menor que 100 es múltiplo de 4, 5 ó 6")
(newline)
(display "Ingrese el número ")
(define num (read))
(numero num)