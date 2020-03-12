#lang racket
(define (box x) ;returns x and updated x with y
  (cons
   (λ() x) ;x
   (λ(y) (set! x y)))) ;put y into x
