;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;En una universidad existen trs programas academincos que son: licenciatura matematicas,
;tecnologia en electronica y tecnologia de sistemas, los cuales tienen un costo de
;$1000000 para tecnologia electronica, $1200000 para matematicas y $1300000 para tecnologia
;de sistemas, ademas de esto los estudiantes tienen un descuento del 10% si pertenecen
;a estrato 2 y del 10% si pertenecen a estrato 1.

;programa que determine el valor de la matricula para tres programas academicos
;(matricula carrera estrato)=>#
;donde carrera es la carrera que quiere cursar y estrato es el estrato al que pertenece el estudiante
;---------------------------------------------------------------------------------------------
(define tecelec 1000000)
;valor de la matricula de tecnologia electronica sin descuento
;---------------------------------------------------------------------------------------------
(define mate 1200000)
;valor de la matricula de licenciatura matematicas sin descuento
;---------------------------------------------------------------------------------------------
(define tecsis 1300000)
;valor de la matricula de tecnologia de sistemas sin descuento
;---------------------------------------------------------------------------------------------
;funciones que determinan el descuento en tecnologia electronica
(define (descelec10 tecelec)
  (* tecelec 0.1))
(define (descelec20 tecelec)
  (* tecelec 0.2))
;---------------------------------------------------------------------------------------------
;funciones que determinan el descuento en licenciatura matematicas
(define (descmat10 mate)
  (* mate 0.1))
(define (descmat20 mate)
  (* mate 0.2))
;---------------------------------------------------------------------------------------------
;funciones para determinar el descuento en tecnologia de sistemas
(define (descsis10 tecsis)
  (* tecsis 0.1))
(define (descsis20 tecsis)
  (* tecsis 0.2))
;---------------------------------------------------------------------------------------------
(define (matricula carrera estrato)
  (if (and (>= carrera 1)(<= carrera 3))
      (cond ((= carrera 1)
             (begin
               (display "el valor de la matricula es de ")
               (display tecelec)
               (cond ((= estrato 1)
                      (begin
                        (newline)
                      (display "su descuento es del 20% ")
                      (display (descelec20 tecelec))
                      (newline)
                      (display "el valor a pagar es  ")
                      (- tecelec (descelec20 tecelec))
                      )
                      )
                     ((= estrato 2)
                      (begin
                        (newline)
                      (display "su descuento es del 10% ")
                      (display (descelec10 tecelec))
                      (newline)
                      (display "el valor a pagar es de ")
                      (- tecelec (descelec10 tecelec))
                      )
                      )
                     (else
                      (begin
                        (newline)
                      (display "no tiene descuento ")
                      (newline)
                      (display "el valor a pagar es de ")
                      tecelec
                      )
                      )
                     )
               )
             )
            ((= carrera 2)
             (begin
               (display "el valor de la matricula es de ")
               (display mate)
               (cond ((= estrato 1)
                      (begin
                        (newline)
                      (display "su descuento es del 20% ")
                      (display (descmat20 mate))
                      (newline)
                      (display "el valor a pagar es  ")
                      (- mate (descmat20 mate))
                      )
                      )
                     ((= estrato 2)
                      (begin
                        (newline)
                      (display "su descuento es del 10% ")
                      (display (descmat10 mate))
                      (newline)
                      (display "el valor a pagar es de ")
                      (- mate (descmat10 mate))
                      )
                      )
                     (else
                      (begin
                        (newline)
                      (display "no tiene descuento ")
                      (newline)
                      (display "el valor a pagar es de ")
                      mate
                      )
                      )
                     )
               )
             )
            (else
              (begin
               (display "el valor de la matricula es de ")
               (display tecsis)
               (cond ((= estrato 1)
                      (begin
                        (newline)
                      (display "su descuento es del 20% ")
                      (display (descsis20 tecsis))
                      (newline)
                      (display "el valor a pagar es  ")
                      (- tecsis (descsis20 tecsis))
                      )
                      )
                     ((= estrato 2)
                      (begin
                        (newline)
                      (display "su descuento es del 10% ")
                      (display (descsis10 tecsis))
                      (newline)
                      (display "el valor a pagar es de ")
                      (- tecsis (descsis10 tecsis))
                      )
                      )
                     (else
                      (begin
                        (newline)
                      (display "no tiene descuento ")
                      (newline)
                      (display "el valor a pagar es de ")
                      tecsis
                      )
                      )
                     )
               )
             )
            )
      (display "Ingrese un valor correcto")
      )
  )
;llamado
(display "Escoja La Carrera Que Desea Cursar")
(newline)
(display "Tecnologia Electronica, presione 1")
(newline)
(display "Licenciatura Matematicas, presione 2")
(newline)
(display "Tecnologia De Sistemas, presione 3")
(newline)
(define materia (read))
(newline)
(display "Escriba su estrato ")
(define est (read))
(matricula materia est)