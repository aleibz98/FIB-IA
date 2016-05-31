
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
    :parameters (?e ?last - exercice ?l ?nl - level ?d - day)
    :precondition (and (exLevel ?e ?l) (currentDay ?d) (lastExerciceToday ?last) 
    		(not (exerciceToday ?e)) 
    		;(forall (?pr - exercice)
    		;	(when (precursor ?pr ?e) (lastExerciceToday ?pr))
    		;)
    		;(forall (?p - exercice)
    		;	(when (preparer ?pr ?e) (exerciceToday ?pr))
    		;)
    	)
    :effect (and 
    		(not (lastExerciceToday ?last)) (lastExerciceToday ?e)
    		(exerciceToday ?e)
    		(when (lower ?l ?nl) (and (not (exLevel ?e ?l)) (exLevel ?e ?nl)))
    	)
    )

  (:action do-exercice-without-leveling
    :parameters (?e ?last - exercice ?l - level ?d - day)
    :precondition (and (exLevel ?e ?l) (currentDay ?d) (lastExerciceToday ?last) 
    		(not (exerciceToday ?e)) 
    		;(forall (?pr - exercice)
    		;	(when (precursor ?pr ?e) (lastExerciceToday ?pr))
    		;)
    		;(forall (?p - exercice)
    		;	(when (preparer ?pr ?e) (exerciceToday ?pr))
    		;)
    	)
    :effect (and 
    		(not (lastExerciceToday ?last)) (lastExerciceToday ?e)
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