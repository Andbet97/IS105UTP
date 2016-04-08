;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;DADOS LA BASE MAYO, LA BASE MENOR Y LA ALTURA DE UN TRAPECIO HALLE SU PERIMETRO

;Funcion perimetro de un trapecio regular
; perimetro bm b h => #
;donde bm es la base mayor, b es la base menor y h es la altura
;ejemplo (perimetro 16 10 4) => 36
;cuerpo
(define (perimetro bm b h)
  (+ bm b (* 2 (sqrt (+ (expt (/(- bm b) 2) 2)(expt h 2))))))
;ejemplo
(perimetro 16 10 4)