
((define (problem exercices-example1)
	
  (:domain exercices)

  (:objects
    exP1 exP2 exN1 exN2 exPr1 - object
  )

  (:init
    (precursor exPr1 exN2) 
    (smaller exN1 exN2)
  	(preparator exP1 exN1) (preparator exP2 exN2)
  ) 

  (:goal (done exN2)

  ))))