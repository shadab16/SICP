#lang scheme

(define (average a b)
	(/ (+ a b) 2))

(define (square x)
	(* x x))

(define (improve guess x)
	(average guess (/ x guess)))

(define (good-enough guess x)
	(< (abs (- (square guess) x)) 0.00001))

(define (sqrt-iter guess x)
	(if (good-enough guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (root x)
	(sqrt-iter 1.0 x))

(root 2)
