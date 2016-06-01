
; Couch Potato exercices problem

(define (domain exercices)

  (:requirements 
    :strips
    :typing
    :adl
  )

  (:types
    exercice level day - object

  )

  (:predicates
    (lower ?l1 - level ?l2 - level)
    (before ?d1 - day ?d2 - day)
    (exLevel ?exercice - exercice ?level - level)
    (precursor ?befofe - exercice ?after - exercice)
    (preparer ?before - exercice ?after - exercice)
    (currentDay ?day - day)
    (exerciceToday ?exercice - exercice)
    (lastExerciceToday ?exercice - exercice)
  ) 

  (:action do-exercice
    :parameters (?e - exercice ?l ?nl - level ?d - day)
    :precondition (and (exLevel ?e ?l) (currentDay ?d)
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
    		(when (lower ?l ?nl) (and (not (exLevel ?e ?l)) (exLevel ?e ?nl)))
    	)
    )

  (:action do-exercice-without-leveling
    :parameters (?e - exercice ?l - level ?d - day)
    :precondition (and (exLevel ?e ?l) (currentDay ?d)
    		(not (exerciceToday ?e)) 
    		;(forall (?pr - exercice)
    		;	(when (precursor ?pr ?e) (lastExerciceToday ?pr))
    		;)
    		;(forall (?p - exercice)
    		;	(when (preparer ?pr ?e) (exerciceToday ?pr))
    		;)
    	)
    :effect (and 
  		(forall (?last - exercice)
  			(when (lastExerciceToday ?last) (not (lastExerciceToday ?last)))
  		)
		(lastExerciceToday ?e)
    		(exerciceToday ?e)
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
  			)
  	)

)