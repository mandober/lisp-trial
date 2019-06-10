;;; Calc square root using Heron's algorithm.

;;; Always start with initial guess being 1.

(define (sqr x)
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2.00))
  (define (good? guess)
    (< (abs (- (* guess guess) x)) .001))
  (define (try guess)
    (if (good? guess)
        guess
        (try (improve guess))))
  (try 1.00))
;; (sqr 4)
