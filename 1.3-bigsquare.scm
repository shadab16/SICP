#lang scheme

(define (square x)
	(* x x))

(define (sum-of-squares x y)
	(+ (square x) (square y)))

(define (bigger-squares a b c)
	(cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
	      ((and (>= b a) (>= c a)) (sum-of-squares b c))
	      ((and (>= a b) (>= c b)) (sum-of-squares a c))))

(display "(2 3 4) -> ")
(bigger-squares 2 3 4)

(display "(3 2 4) -> ")
(bigger-squares 3 2 4)

(display "(3 4 2) -> ")
(bigger-squares 3 4 2)
