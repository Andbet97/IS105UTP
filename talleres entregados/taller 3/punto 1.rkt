;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;RESOLVER LA EXPRESION n^2+n+24 

;Resolver la expresion n^2+n+24
; x n => #
;donde n es cualquier numero natural
;ejemplo (x 2) => 30
;cuerpo 
(define (x n)(+ (expt n 2) n 24))
;prueba 
(x 2)
