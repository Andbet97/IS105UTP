;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;CALCULAR EL AREA DE UN TRAPECIO REGULAR DADA BASE MAYOR, BASE MENOR Y LA ALTURA

;Calcular el area de un trapecio regular dada base mayor, base menor y altura
;area_trapecio bm b h  =>  #
;donde bm es la base mayor, b es la base menor y h es la altura 
;ejemplo ( area_trapecio 18 8 6) => 78
;cuerpo
(define (area_trapecio bm b h)(/ (* (+ bm b) h) 2))
;prueba 
(area_trapecio 18 8 6)
