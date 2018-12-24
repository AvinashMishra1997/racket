(define (split lst fol l len)
	
	(if (= fol 1 )
		(if (= l len)
		'()
		(cons (car lst) (split (cdr lst) 1 (+ l 1) len)))
	(if (= l len)
		lst
		(split (cdr lst) 2 (+ l 1) len))

	)
)


(define (merge l1 l2)
	(if (null? l1)
		l2
	(if (null? l2)
		l1
	(let (( ele11 (car l1))
	     ( ele12 (cdr l1))
	     ( ele21 (car l2))
	     ( ele22 (cdr l2)))
	     (if (< ele11 ele21)
	     	(cons (car l1) (merge ele12 l2))
	     	(cons (car l2) (merge l1 ele22))
	     	)
	)
       )
    )
) 
	

	
(define (mergesort l)
     (if ( = (length l) 1)
     	l
	  (let (( lst1 (split l 1 (- (length l) (length l)) (/ (length l) 2)))
	     ( lst2 (split l 2 (/ (length l) 2) (length l))))
	     	(merge (mergesort lst1) (mergesort lst2))))
     	)
     	
     	
     	
     	
     	
     	
     	
     	
     	
     	
     	
     	
     	
     	
     	
     	
