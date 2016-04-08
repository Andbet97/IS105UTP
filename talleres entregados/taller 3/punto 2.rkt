;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |punto 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;RESOLVER LA EXPRESION (1/3)-n^3*55

;Resolver la expresion (1/3)-n^3*55
; x n => #
;donde n es cualquier numero natural
;ejemplo (x 3) => -1484.666667
;cuepo 
(define (x n)(- (/ 1 3)(*(expt n 3) 55)))
;prueba 
(x 3)