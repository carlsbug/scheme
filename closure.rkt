#lang racket

(define (make-adder x)
  (lambda (y) (+ x y)))


(let ([z (make-adder 2)]) ; z is now a procedure which needs one more argument to add
  (z 5))


(define (my-counter)
  (let ([count 1])
    (lambda () (set! count (+ 1 count)) count))) ; i add count to 1 and print the updated count

(define hi (my-counter))

(hi)

(define (my-box x) ; to call this my-box function, you only need one argument
  (cons (lambda () x)
        (lambda (y) (set! x y)))) ; to get the second value, (cdr box), you will need another argument y

;let's make getter and setter

(define (box-getter box)
  ((car box))) ;since (car x) returns a lambda function, we need another paranthesis
(define (box-setter box y)
  ((cdr box)y))


;let's set up the environment
(define my-environment (my-box 3))

(box-getter my-environment) ;get the value of box
(box-setter my-environment 5) ;set the value of box
(box-getter my-environment) ;get the value of box
