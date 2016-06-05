
; Couch Potato exercices problem

(define (domain exercices)

  (:requirements 
    :strips
    :typing
    :adl
  )

  (:types
    exercice level day num - object

  )

  (:predicates
    (lower ?l1 - level ?l2 - level)
    (before ?d1 - day ?d2 - day)
    (exLevel ?exercice - exercice ?level - level)
    (precursor ?before - exercice ?after - exercice)
    (preparer ?before - exercice ?after - exercice)
    (currentDay ?day - day)
    (exerciceToday ?exercice - exercice)
    (lastExerciceToday ?exercice - exercice)
    ;Extension 3    
    (numExDia ?num - num) 
    (smaller ?n1 - num ?n2 - num)
    (zero ?n - num)
  ) 

  (:action do-exercice
    :parameters (?n ?nn - num ?e - exercice ?l ?nl - level )
    :precondition (and (exLevel ?e ?l) (numExDia ?n) (smaller ?n ?nn) (lower ?l ?nl)
    		(not (exerciceToday ?e)) 
    		(forall (?pr - exercice)
    			(not (and (precursor ?pr ?e) (not (lastExerciceToday ?pr))))
    		)
    		(forall (?p - exercice)
    			(not (and (preparer ?p ?e) (not (exerciceToday ?p))))
    		)
    	)
    :effect (and 
  		(forall (?last - exercice)
  			(when (lastExerciceToday ?last) (not (lastExerciceToday ?last)))
  		)
    		(lastExerciceToday ?e)
    		(exerciceToday ?e)
    		(not (exLevel ?e ?l))
    		(exLevel ?e ?nl)
		(not (numExDia ?n))
		(numExDia ?nn)
    	)
    )

  (:action do-exercice-without-leveling
    :parameters (?n ?nn - num ?e - exercice ?l - level ) 
    :precondition (and (exLevel ?e ?l) (numExDia ?n) (smaller ?n ?nn)
    		(not (exerciceToday ?e)) 
    		(forall (?pr - exercice)
    			(not (and (precursor ?pr ?e) (not (lastExerciceToday ?pr))))
    		)
    		(forall (?p - exercice)
    			(not (and (preparer ?p ?e) (not (exerciceToday ?p))))
    		)
    	)
    :effect (and 
  		(forall (?last - exercice)
  			(when (lastExerciceToday ?last) (not (lastExerciceToday ?last)))
  		)
		(lastExerciceToday ?e)
    		(exerciceToday ?e)
    		(not (numExDia ?n))
		(numExDia ?nn)
    	)
    )

  (:action skip-day
  		:parameters (?d1 ?d2 - day)
  		:precondition (and (currentDay ?d1) (before ?d1 ?d2))
  		:effect (and (not (currentDay ?d1)) (currentDay ?d2)
  				(forall (?e - exercice)
  					(when (exerciceToday ?e) (not (exerciceToday ?e)))
  				)
  				(forall (?e - exercice)
  					(when (lastExerciceToday ?e) (not (lastExerciceToday ?e)))
  				)
  				(forall (?n - num)
  					(when (zero ?n) (numExDia ?n))
  				)
  				(forall (?n - num)
                                        (when (not(zero ?n)) (not (numExDia ?n)))
  				)
  				
  			)
  	)

)
