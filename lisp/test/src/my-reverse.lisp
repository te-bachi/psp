



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


( 1 2 3 4 )
append ( [ 2 3 4 ] 1)

( 2 3 4 )
append ( [ 3 4 ] 2)

( 3 4 )
append ( [ 4 ] 3)

(4)
append ( [ NIL ] 4)

NIL
return NIL
return ( 4 )
return ( 4 3 )
return ( 4 3 2 )
return ( 4 3 2 1 )

