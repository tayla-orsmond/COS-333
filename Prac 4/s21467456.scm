#lang sicp
; getDivisors
(define (getDivisors num lis)
  (if (zero? num)
      '() ; num 0? no divisors possible
      (getDivHelper num lis) ; else recursive call helper
      )
  )
(define (getDivHelper num lis)
  (cond 
    ((null? lis) '())
    ((zero? (car lis)) (getDivHelper num (cdr lis))) ; element 0? skip
    ((positive? (remainder num (car lis))) (getDivHelper num (cdr lis))) ; element doesn't divide? skip
    (else (cons (car lis) (getDivHelper num (cdr lis)))) ; else construct
    )
  )

(getDivisors 0 '())
(getDivisors 10 '())
(getDivisors 10 '(20 50 60))
(getDivisors 10 '(1 20 30 2 5 40 10 60))