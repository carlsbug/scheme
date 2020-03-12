#lang racket
(define (box x) ;returns x and updated x with y
  (cons
   (λ() x) ;x //or (lambda() x)
   (λ(y) (set! x y)))) ;put y into x //or (lambda(y) (set! x y))))

(define my-box (box 3)) ; this returns two procedures appended with cons
                        ; y value is not required to call this function! for now...
(define (get-val bx)
  ((car bx)))

(define (set-val bx newValue)
  ((cdr bx) newValue))


;(get-val my-box)
(set-val my-box 5)
;(get-val my-box)
