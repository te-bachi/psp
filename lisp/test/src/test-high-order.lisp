
; === MAPCAR ========================================================

(mapcar '+ 1 1 1 1 1)
*** - MAPCAR: A proper list must not end with 1
=== no ' as data!

(mapcar '+ '1 '1 '1 '1 '1)
*** - MAPCAR: A proper list must not end with 1
=== ???

(mapcar '+ (1 2 3) (2 3 1) (3 1 2) (1 2 3) (1 2 3))
*** - EVAL: 1 is not a function name; try using a symbol instead
=== no ' as data!


(mapcar '+ '(1 2 3) '(2 3 1) '(3 1 2) '(1 2 3) '(1 2 3))
*** - EVAL: 1 is not a function name; try using a symbol instead

(mapcar '+ '(1 2 3))
(1 2 3)

(mapcar '+ '(1 2 3) '(3 2 1))
(4 4 4)

(mapcar '+ '(1 2 3) '(7 8 9) '(5 6 7))
(13 16 19)

(mapcar '+ '((1 1) (2 8) (3 99)))
*** - +: (1 1) is not a number

(mapcar 'sign '(1 2 3) '(7 8 9) '(5 6 7))
*** - EVAL/APPLY: too many arguments given to SIGN

(mapcar 'sign '(-5 -1 -7 2 8 5 0 -4 4))
(-1 -1 -1 1 1 1 0 -1 1)

; === MAPLIST =======================================================


(maplist '+ '1 '2 '3 '4)
*** - MAPLIST: A proper list must not end with 1

(maplist '+ '(1 2))
*** - +: (1 2) is not a number

(maplist '+ '(1) '(2) '(3))
*** - +: (1) is not a number

(maplist '+ '1 ())
(maplist 'sign '(-5 -1 -7 2 5))
*** - >: (-5 -1 -7 2 5) is not a real number



