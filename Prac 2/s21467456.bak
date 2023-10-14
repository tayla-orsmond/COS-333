#lang sicp
; Tayla Orsmond u21467456
; Task 1
; pyramidVolume
(define (pyramidVolume length height)
  (let
      (
       (frac (/ 1 3))
       (lengthSquared (* length length))
       )
    (* frac lengthSquared height)
    )
  )

(pyramidVolume 3.2 4.8)
(pyramidVolume -3.2 -4.8)
(pyramidVolume -3.2 4.8)
(pyramidVolume 3.2 -4.8)

; Task 2
; getPositiveOddNumbers
(define (getPositiveOddNumbers lis)
  (cond
    ((null? lis) '()) ; return empty list if lis is empty
    ((negative? (car lis)) (getPositiveOddNumbers (cdr lis))) ; if atom is negative, skip it and recursively call with the rest of the list
    ((even? (car lis)) (getPositiveOddNumbers (cdr lis))) ; same story if atom is positive & even
    (else (cons (car lis) (getPositiveOddNumbers (cdr lis)))) ; else atom is positive and odd, so construct a list with it and recursively call
    )
)

; (getPositiveOddNumbers '())
; (getPositiveOddNumbers '(2 4 6 8))
; (getPositiveOddNumbers '(1 3 5 9))
; (getPositiveOddNumbers '(-3 4 0 5 8 3))

;(getPositiveOddNumbers '(7)) ; (7)
;(getPositiveOddNumbers '(-3)) ; ()
;(getPositiveOddNumbers '(1 -3 9 8 -7 -3 45 -9 2 4 6 1)) ; 1 9 45 1

; Task 3
; doubleEveryOddElement
(define (doubleEveryOddElement lis)
  (doubleRecursive lis 1) ; counter starts at 1
  )
; helper = doubleRecursive
(define (doubleRecursive lis index)
  (cond
    ((null? lis) '()) ; return empty list if lis is empty
    ((even? index) (cons (car lis) (doubleRecursive (cdr lis) (+ index 1)))) ; if index is even, skip doubling, recursive call with rest of list (construct list)
    (else (cons (* (car lis) 2) (doubleRecursive (cdr lis) (+ index 1)))) ; else double element, recursive call with rest of list (construct list)
    )
  )

(doubleEveryOddElement '())

(doubleEveryOddElement '(4))
(doubleEveryOddElement '(4 5))

(doubleEveryOddElement '(4 3 5 2))

;(doubleEveryOddElement '(2 4 6 8 9 7 5 3 1)) ; (4 4 12 8 18 7 10 3 2)