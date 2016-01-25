

(car '(quadrat kreis dreieck))
(cdr '(quadrat kreis dreieck))
(cdr (cdr (cdr '(1 2 3 4 5 6))))
(car (cdr (cdr '(1 2 3 4 5 6))))
(caddr '(1 2 3 4 5 6))
(cadadr '(1 (2 (3 4) 5) 6))

;; car (short for "Contents of the Address part of Register number"),
;; cdr ("Contents of the Decrement part of Register number"),
(setf *bla* '(a b c d e f g h))
(setf *sep* '((a1 a2 a3 a4) (b1 b2 b3 b4) (c1 c2 c3 c4) (d1 d2 d3 d4)))
(setf *has* '(((a1 a2 a3 a4) (b1 b2 b3 b4)) ((c1 c2 c3 c4) (d1 d2 d3 d4)) ((e1 e2 e3 e4) (f1 f2 f3 f4))))

;; [10]> (car *bla*)
;; A
;; [11]> (cadr *bla*)
;; B
;; [12]> (caddr *bla*)
;; C
;; [13]> (cadddr *bla*)
;; D
;; 
;; [18]> (cdr *bla*)
;; (B C D E F G H)
;; [19]> (cddr *bla*)
;; (C D E F G H)
;; [20]> (cdddr *bla*)
;; (D E F G H)
;; [21]> (cddddr *bla*)
;; (E F G H)
;; 
;; [1]> (car *has*)
;; ((A1 A2 A3 A4) (B1 B2 B3 B4))
;; [2]> (cadr *has*)
;; ((C1 C2 C3 C4) (D1 D2 D3 D4))
;; [3]> (caddr *has*)
;; ((E1 E2 E3 E4) (F1 F2 F3 F4))
;; 
;; [4]> (cdr *has*)
;; (((C1 C2 C3 C4) (D1 D2 D3 D4)) ((E1 E2 E3 E4) (F1 F2 F3 F4)))
;; [5]> (cddr *has*)
;; (((E1 E2 E3 E4) (F1 F2 F3 F4)))
;; 
;; [12]> (cdadar *has*)
;; (B2 B3 B4)
;; 
;; Break 1 [24]> (car *has*)
;; ((A1 A2 A3 A4) (B1 B2 B3 B4))
;; Break 1 [24]> (caar *has*)
;; (A1 A2 A3 A4)
;; Break 1 [24]> (cdaar *has*)
;; (A2 A3 A4)
;; Break 1 [24]> (cadaar *has*)
;; A2



;; if function
;; - only one expression is evaluated (then or else) [special form]
;;   other functions evaluate the whole body (= all parameters in the function)
;; - only one thing can be done in then and else

(defun if-eval ()
    (if (oddp 5)
        'odd-number
        (/ 1 0)
    )
)

(defun if-test-eq ()
    (if (= (+ 1 2) 3)
        (princ "equal")
        (princ "not equal")
    )
)


(defun if-test-neq ()
    (if (= (+ 1 2) 4)
        (princ "equal")
        (princ "not equal")
    )
)


(defun if-test-odd ()
    (if (oddp 5)
        (princ "odd")
        (princ "even")
    )
)

(defun if-test-even ()
    (if (oddp 6)
        (princ "odd")
        (princ "even")
    )
)

(defun my-reverse-fail (seq)
    (if (null seq)
        seq
        (progn
            ;;(print (concatenate 'string "pre " (seq)))
            (let (append (my-reverse (cdr seq))
                    (list (car seq))
            ))
        )
    )
)

(defun my-reverse (seq)
    (if (null seq)
        seq
        (progn
            (append (my-reverse (cdr seq))
                    (list (car seq))
            )
        )
    )
)

;; [1]> (mul-val)
;; a = 1
;; b = 23/34
;; c = 99
;; (1 23/34 99)
(defun mul-val ()
    (let ((a 0)
          (b 0)
          (c 99))
        (multiple-value-bind (a b)
            (floor (/ 57 34))
            (format t "a = ~D~&" a)
            (format t "b = ~D~&" b)
            (format t "c = ~D~&" c)
            (list a b c)
        )
    )
)


(caaddr '((apfel banane) zitrone (dattel erdbeere)))

;; [1]> (caaddr '((apfel banane) zitrone (dattel erdbeere)))
;; DATTEL
;; [2]> (caddr '((apfel banane) zitrone (dattel erdbeere)))
;; (DATTEL ERDBEERE)
;; [3]> (cddr '((apfel banane) zitrone (dattel erdbeere)))
;; ((DATTEL ERDBEERE))
;; [4]> (cdr '((apfel banane) zitrone (dattel erdbeere)))
;; (ZITRONE (DATTEL ERDBEERE))


(defun cond-test ()
    (let ((a 10))
        (cond
            ((> a 7)
                (print "groesser7")
                'groesser7)
            ((= A 7)
                (print "gleich7")
                 'gleich7)
            (t                      ; default: match-all
                (print "kleiner7")
                'kleiner7)
            (NIL                    ; wird gar nicht verwendet!
                (print "was?")
                NIL)
        )
    )
)



(defun cond-test2 (a)
    (cond
        ((> a 7)
            (print "groesser7")
            'groesser7)
        ((= A 7)
            (print "gleich7")
             'gleich7)
        (NIL                    ; wird gar nicht verwendet!
            (print "was?")      ; wenn alle anderen vergleiche nicht passen
            NIL)                ; dann gibt COND NIL zurück (keine 'case NIL'
    )
)

;; [1]> (list-double-fail '(1 2 3 4))
;; (8 3 2 1)
(defun list-double-fail (seq)
    (cond
        ((null seq)
            seq)
        ((= (length seq) 1)
            (list (* 2 (car seq))))
        (t
            (print seq)
            (append
                (list-double (cdr seq))
                (list (car seq))
            ))
            
    )
)

;; [1]> (list-double '(1 2 3 4))
;; (8 3 2 1)
(defun list-double (seq)
    (cond
        ((null seq)
            seq)
        (t
            (print seq)
            (append
                (list (* 2 (car seq)))
                (list-double (cdr seq))
            ))
            
    )
)

(defun sign (num)
    (cond
        ((> num 0)
            1)
        ((< num 0)
            -1)
        (t
            0)
    )
)

(defun list-sign (lst)
    (if (null lst)
        nil
        (cons
            (sign (car lst))
            (list-sign (cdr lst))
        )
    )
)

;; Square elements of list
;;
(defun list-sqr (lst)
  (if (null lst) nil
      ;; else
      (cons (expt (car lst) 2) 
            (list-sqr (cdr lst)))))

(defun map-list (f lst)
    (if (null lst)
        nil
        (cons (funcall f (car lst))
              (map-list f (cdr lst))
        )
    )
)

(defun list-sum (lst)
    (cond 
        ((null lst)
            nil
        )
        (t
            (cond
                ((>= (length lst) 2)
                    (+
                       (car lst)
                       (list-sum (cdr lst))
                    )
                )
                (t
                    (car lst)   
                )
            )
        )
    )
)

(defun list-mul (lst)
    (cond 
        ((null lst)
            nil
        )
        (t
            (cond
                ((>= (length lst) 2)
                    (*
                       (car lst)
                       (list-mul (cdr lst))
                    )
                )
                (t
                    (car lst)   
                )
            )
        )
    )
)

