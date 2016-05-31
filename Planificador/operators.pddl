
; Couch Potato exercices problem

((define (domain exercices)

  (:requirements 
    :strips
  )

  (:types
    exercice - object
    exercicePrecursor exercicePreparator exerciceN1 - exercice
  )

  (:predicates
    (predicateName ?x - object ?y - object) 	
  ) 

  (:action action-name
    :parameters ()
    :precondition ()
    :effect ())

)
))