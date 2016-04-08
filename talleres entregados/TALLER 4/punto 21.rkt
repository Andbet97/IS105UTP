;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 21|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Una aerolinea desea saber cuanto debe cobrar a sus pasajeros por la compra de un tiquete
;dependiendo de las siguientes condiciones:
;Los destinos de la aerolinea son Bogota y San Andres
;Un tiquete se puede comprar faltando 2, 1 o el mismo dia del viaje
;Un tiquete comprado a Bogota faltando 2 dias tiene un costo de $Us 135, faltando 1 dia su
;costo se eleva en un 5% y el mismo dia en un 8% mas que faltando 1 dia, es decir un 8%
;mas sobre el valor del tiquete faltando 1 dia.
;A San Andres el costo del tiquete es de $395000 si es comprado faltando 1 dia, si es faltando 2
;dias su costo se reduce en un 7% y si es el mismo dia el valor es mayor en un 5% sobre su
;valor en dolares, para ambos casos, la tasa de cambio es de $Us 1 por $2800 pesos colombianos

;(viaje destino dias)=> vlr_total_pagar
;donde destino es el lugar a donde desea viajar y dias el numero de dias en los que viaja
;-------------------------------------------------------------------------------------------------------
(define bogota2 135)
;preicio en dolares del tickete a bogota faltando dos dias para el viaje
;-------------------------------------------------------------------------------------------------------
(define sanandres1 395000)
;precio en pesos del tickete a san andres faltando 1 dia para el viaje
;-------------------------------------------------------------------------------------------------------
;funcione para hallar el precio a bogota falatando 2, 1 o el mismo dia
;faltando un dia (en dolares)
(define (bogota1 bogota2)
  (+ bogota2 (* bogota2 0.05)))
;el mismo dia (en dolares)
(define (bogota0 bogota1 bogota2)
  (+ (bogota1 bogota2)(* (bogota1 bogota2)0.08)))
;-------------------------------------------------------------------------------------------------------
;funcione para hallar el precio a san andres falatando 2, 1 o el mismo dia
;faltando dos dias (en pesos)
(define (sanandres2 sanandres1)
  (- sanandres1 (* sanandres1 0.07)))
;el mismo dia (en dolares)
(define (sanandres0 sanandres1)
  (/ (+ sanandres1 (* sanandres1 0.05)) 2800))
;--------------------------------------------------------------------------------------------------------
(define (viaje destino dias)
  (if (and (>= destino 1 )(<= destino 2))
      (cond ((= destino 1)
             (if (and (<= dias 2)(>= dias 0))
                 (cond ((= dias 0)
                        (begin
                          (display "El valor del tickete en dolares es de $US ")
                          (display (bogota0 bogota1 bogota2))
                          (newline)
                          (display "El valor del tickete en pesos es de $ ")
                          (display (* (bogota0 bogota1 bogota2) 2800))
                          ))
                       ((= dias 1)
                        (begin
                          (display "El valor del tickete en dolares es de $US ")
                          (display (bogota1 bogota2))
                          (newline)
                          (display "El valor del tickete en pesos es de $ ")
                          (display (* (bogota1 bogota2) 2800))
                          ))
                       (else
                        (begin
                          (display "El valor del tickete en dolares es de $US ")
                          (display bogota2)
                          (newline)
                          (display "El valor del tickete en pesos es de $ ")
                          (display (* bogota2 2800))
                          ))
                       )
                 (display "Los vuelos solo se pueden comprar hasta dos dias antes del viaje ")
                 ))
            (else
             (if (and (<= dias 2)(>= dias 0))
                 (cond ((= dias 0)
                        (begin
                          (display "El valor del tickete en dolares es de $US ")
                          (display  (sanandres0 sanandres1))
                          (newline)
                          (display "El valor del tickete en pesos es de $ ")
                          (display (* (sanandres0 sanandres1) 2800))
                          ))
                        
                       ((= dias 1)
                        (begin
                          (display "El valor del tickete en dolares es de $US ")
                          (display (/ sanandres1 2800))
                          (newline)
                          (display "El valor del tickete en pesos es de $ ")
                          (display sanandres1)
                          ))
                       (else
                        (begin
                          (display "El valor del tickete en dolares es de $US ")
                          (display (/(sanandres2 sanandres1) 2800))
                          (newline)
                          (display "El valor del tickete en pesos es de $ ")
                          (display (sanandres2 sanandres1)
                          ))
                       )
                       )
                      (display "Los vuelos solo se pueden comprar hasta dos dias antes del viaje ")
                      ))
                 )
            
              (display "No se encontro el destino ")
              )
  )      

;llamado
(display "Escoja el destino al cual quiere viajar ")
(newline)
(display "Bogota, presione 1")
(newline)
(display "San Andres, presione 2")
(newline)
(define lugar (read))
(newline)
(display "En cuantos dias es el viaje ")
(newline )
(display "El viaje es hoy, presione 0")
(newline)
(display "El viaje es mañana, presione 1")
(newline)
(display "El viaje es en dos dias, presione 2")
(newline)
(define tiempo (read))
(newline)
(viaje lugar tiempo)