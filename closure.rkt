#lang racket
(define (box x) ;returns x and updated x with y
  (cons
   (λ() x) ;x //or (lambda() x)
   (λ(y) (set! x y)))) ;put y into x //or (lambda(y) (set! x y))))
