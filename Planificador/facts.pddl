
(define (problem exercices-example1)
	
  (:domain exercices)

  (:objects
    exP exA exPr - exercice
    l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 - level
    d1 d2 d3 d4 d5 - day ; d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 - day
  )

  (:init
  	(currentDay d1)

  	(lower l1 l2)
  	(lower l2 l3)
  	(lower l3 l4)
  	(lower l4 l5)
  	(lower l5 l6)
  	(lower l6 l7)
  	(lower l7 l8)
  	(lower l8 l9)
  	(lower l9 l10)

  	(before d1 d2)
  	;(before d1 d3)
  	;(before d1 d4)
  	;(before d1 d5)

  	(before d2 d3)
  	;(before d2 d4)
  	;(before d2 d5)

  	(before d3 d4)
  	;(before d3 d5)

  	(before d4 d5)

  	(exLevel exA l5)
  	(exLevel exP l1)
  	(exLevel exPr l1)

    (precursor exPr exA) 
  	(preparer exP exA)
  ) 

  (:goal (and (currentDay d5)(exLevel exA l6))

  ))