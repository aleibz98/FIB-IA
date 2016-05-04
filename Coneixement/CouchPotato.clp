; Wed May 04 19:52:01 CEST 2016
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot consumo+de+fruta
;+		(comment "Piezas a la semana")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot jueves
;+		(comment "ejercicios jueves")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot respuesta
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiempo+diario+disponible
;+		(comment "tiempo diario en minutos")
		(type INTEGER)
		(range 30 %3FVARIABLE)
		(default 30)
		(cardinality 7 7)
		(create-accessor read-write))
	(multislot zona
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
		(create-accessor read-write))
	(multislot problemas+fisicos
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write))
	(multislot problemas
		(type INSTANCE)
;+		(allowed-classes Problema)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot objetivos
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(create-accessor read-write))
	(single-slot repeticiones+maximas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot viernes
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot peso
		(type FLOAT)
		(default 75.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot calorias+quemadas
;+		(comment "calorias quemadas por minuto")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot grupo_muscular
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot imc
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot picar+entre+horas
;+		(comment "de 0 (nada) a 10 (mucho)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot cansancio
		(type SYMBOL)
		(allowed-values Mucho Poco Nada)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion+minima
;+		(comment "en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion
;+		(comment "en minutos")
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot lunes
;+		(comment "ejercicios lunes")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot sabado
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot salud
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot ejercicios+combinan
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot tests
		(type INSTANCE)
;+		(allowed-classes Test)
		(create-accessor read-write))
	(single-slot frequencia
		(type SYMBOL)
		(allowed-values Diaria Semanal Mensual None)
		(default None)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot problemas+aliviados
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write))
	(single-slot ejercicio
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dieta
		(type INSTANCE)
;+		(allowed-classes Dieta)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot abuso+de+sal
;+		(comment "de 0 (nada) a 10 (mucho)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ppm
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot repeticiones+minimas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot actividades
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(create-accessor read-write))
	(multislot martes
;+		(comment "ejercicios martes")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot edad+maxima
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pMax
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pMin
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad+minima
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot problemas+contraindicados
;+		(comment "problemas del usuario contraindicados para este ejercicio")
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write))
	(single-slot tirantezMuscular
		(type SYMBOL)
		(allowed-values Poco Mucho Nada)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot miercoles
;+		(comment "ejercicios miercoles")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot duracion+maxima
;+		(comment "en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grupos+musculares
;+		(comment "grupos musculares ejercitados")
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
		(create-accessor read-write))
	(single-slot repeticiones
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot objetivos+ejercicio
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(create-accessor read-write))
	(single-slot altura
		(type FLOAT)
		(default 1.7)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
		(default 25)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dificultad
		(type SYMBOL)
		(allowed-values moderada normal dificil)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot domingo
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot value
;+		(type ANY)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona
	(is-a USER)
	(role concrete)
	(single-slot imc
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot actividades
		(type INSTANCE)
;+		(allowed-classes Actividad)
		(create-accessor read-write))
	(single-slot altura
		(type FLOAT)
		(default 1.7)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tests
		(type INSTANCE)
;+		(allowed-classes Test)
		(create-accessor read-write))
	(single-slot peso
		(type FLOAT)
		(default 75.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
		(default 25)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot pMax
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pMin
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dieta
		(type INSTANCE)
;+		(allowed-classes Dieta)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot problemas+fisicos
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write)))

(defclass Test
	(is-a USER)
	(role concrete)
	(single-slot ppm
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot cansancio
		(type SYMBOL)
		(allowed-values Mucho Poco Nada)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tirantezMuscular
		(type SYMBOL)
		(allowed-values Poco Mucho Nada)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Actividad
	(is-a USER)
	(role concrete)
	(single-slot duracion
;+		(comment "en minutos")
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot frequencia
		(type SYMBOL)
		(allowed-values Diaria Semanal Mensual None)
		(default None)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Actividad+de+Trabajo
	(is-a Actividad)
	(role concrete))

(defclass Actividad+fuera+de+Trabajo
	(is-a Actividad)
	(role concrete))

(defclass Estatica
	(is-a Actividad+fuera+de+Trabajo)
	(role concrete))

(defclass Tarea+domestica
	(is-a Actividad+fuera+de+Trabajo)
	(role concrete))

(defclass Desplazamiento
	(is-a Actividad+fuera+de+Trabajo)
	(role concrete))

(defclass Salud
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Dieta
	(is-a Salud)
	(role concrete)
	(single-slot picar+entre+horas
;+		(comment "de 0 (nada) a 10 (mucho)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot consumo+de+fruta
;+		(comment "Piezas a la semana")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot abuso+de+sal
;+		(comment "de 0 (nada) a 10 (mucho)")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Problema
	(is-a Salud)
	(role concrete)
	(single-slot respuesta
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Problema+musculo-esqueletico
	(is-a Problema)
	(role concrete)
	(multislot zona
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
		(create-accessor read-write)))

(defclass Otros+problemas
	(is-a Problema)
	(role concrete))

(defclass Objetivo
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Musculacion
	(is-a Objetivo)
	(role concrete)
	(single-slot grupo_muscular
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Programa
	(is-a USER)
	(role concrete)
	(multislot objetivos
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(create-accessor read-write))
	(multislot jueves
;+		(comment "ejercicios jueves")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot tiempo+diario+disponible
;+		(comment "tiempo diario en minutos")
		(type INTEGER)
		(range 30 %3FVARIABLE)
		(default 30)
		(cardinality 7 7)
		(create-accessor read-write))
	(multislot lunes
;+		(comment "ejercicios lunes")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot martes
;+		(comment "ejercicios martes")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot sabado
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot viernes
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot miercoles
;+		(comment "ejercicios miercoles")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot domingo
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write)))

(defclass Ejercicio
	(is-a USER)
	(role concrete)
	(single-slot duracion+maxima
;+		(comment "en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion+minima
;+		(comment "en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot repeticiones+minimas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grupos+musculares
;+		(comment "grupos musculares ejercitados")
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad+maxima
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot objetivos+ejercicio
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(create-accessor read-write))
	(multislot ejercicios+combinan
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot edad+minima
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot problemas+contraindicados
;+		(comment "problemas del usuario contraindicados para este ejercicio")
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write))
	(single-slot repeticiones+maximas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot problemas+aliviados
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write))
	(single-slot calorias+quemadas
;+		(comment "calorias quemadas por minuto")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Ejercicio+con+aparatos
	(is-a Ejercicio)
	(role concrete))

(defclass Ejercicio+de+suelo
	(is-a Ejercicio)
	(role concrete))

(defclass Ejercicio+con+pesas
	(is-a Ejercicio)
	(role concrete))

(defclass Estiramientos
	(is-a Ejercicio)
	(role concrete))

(defclass Grupo+muscular
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Ejercicio-Persona
	(is-a USER)
	(role concrete)
	(single-slot repeticiones
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot salud
		(type INSTANCE)
;+		(allowed-classes Salud)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ejercicio
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dificultad
		(type SYMBOL)
		(allowed-values moderada normal dificil)
;+		(cardinality 1 1)
		(create-accessor read-write)))

        
(definstances instances

; Wed May 04 19:52:01 CEST 2016
; 
;+ (version "3.5")
;+ (build "Build 663")

([Antebrazos] of  Grupo+muscular
)

([Articular] of  Problema+musculo-esqueletico
)

([Barrer] of  Tarea+domestica

	(duracion 0)
	(frequencia None))

([Bicicleta+estatica] of  Ejercicio+con+aparatos

	(calorias+quemadas 6.4)
	(duracion+maxima 90)
	(duracion+minima 20)
	(edad+maxima 60)
	(edad+minima 12))

([Brazos] of  Problema+musculo-esqueletico

	(zona
		[B%C3%ADceps]
		[Deltoides]
		[Dorsal]
		[Tr%C3%ADceps]))

([B%C3%ADceps] of  Grupo+muscular
)

([Carrera+sostenida] of  Test
)

([Cinta+de+correr] of  Ejercicio+con+aparatos

	(duracion+minima 20))

([Colada] of  Tarea+domestica

	(duracion 0)
	(frequencia None))

([Compra] of  Desplazamiento

	(duracion 0)
	(frequencia None))

([CouchPotato_Class1] of  Persona

	(altura 190.0)
	(dieta [CouchPotato_Class2])
	(edad 20)
	(nombre "Inigo")
	(peso 75.0))

([CouchPotato_Class2] of  Dieta

	(abuso+de+sal 10)
	(consumo+de+fruta 10)
	(picar+entre+horas 10))

([Cuadriceps] of  Grupo+muscular
)

([Cuello] of  Problema+musculo-esqueletico

	(zona [Trapecio]))

([Cuidar+del+jard%C3%ADn] of  Tarea+domestica

	(duracion 0)
	(frequencia None))

([De+pie] of  Actividad+de+Trabajo
)

([Deltoides] of  Grupo+muscular
)

([Desplazamiento+a+pie] of  Actividad+de+Trabajo
)

([Dorsal] of  Grupo+muscular
)

([Equilibrio] of  Objetivo
)

([Esfuerzos+musculares] of  Actividad+de+Trabajo
)

([Espalda] of  Problema+musculo-esqueletico

	(respuesta FALSE)
	(zona
		[Dorsal]
		[Trapecio]))

([Flexibilidad] of  Objetivo
)

([Fregar] of  Tarea+domestica

	(duracion 0)
	(frequencia None))

([Gemelos] of  Grupo+muscular
)

([Gluteos] of  Grupo+muscular
)

([Lectura] of  Estatica

	(duracion 0)
	(frequencia None))

([Levantamiento+de+peso] of  Actividad+de+Trabajo
)

([Mantenimiento] of  Objetivo
)

([Movimientos+Repetitivos] of  Actividad+de+Trabajo
)

([Paseo] of  Desplazamiento

	(duracion 0)
	(frequencia None))

([Paseo+mascota] of  Desplazamiento

	(duracion 0)
	(frequencia None))

([Pesos] of  Ejercicio+con+aparatos
)

([Planchar] of  Tarea+domestica

	(duracion 0)
	(frequencia None))

([Ponerse+en+forma] of  Objetivo
)

([Presion+alta] of  Otros+problemas
)

([Rebajar+Peso] of  Objetivo
)

([Remo] of  Ejercicio+con+aparatos

	(calorias+quemadas 10.0)
	(grupos+musculares
		[Antebrazos]
		[B%C3%ADceps]
		[Cuadriceps]
		[Dorsal]
		[Gemelos]
		[Tr%C3%ADceps]
		[Deltoides]
		[Gluteos])
	(problemas+aliviados
		[Articular]
		[Rodillas])
	(problemas+contraindicados [Sobrepeso])
	(repeticiones+minimas 20))

([Rodillas] of  Problema+musculo-esqueletico

	(zona [Gemelos]))

([Salir+a+correr] of  Desplazamiento

	(duracion 0)
	(frequencia None))

([Sentado] of  Actividad+de+Trabajo
)

([Sistema+Card%C3%ADaco] of  Objetivo
)

([Sobrepeso] of  Otros+problemas
)

([Stepper] of  Ejercicio+con+aparatos

	(calorias+quemadas 6.1)
	(duracion+maxima 30)
	(duracion+minima 10)
	(edad+maxima 55)
	(ejercicios+combinan [Cinta+de+correr])
	(grupos+musculares
		[Cuadriceps]
		[Gemelos]
		[Gluteos])
	(objetivos+ejercicio [Sistema+Card%C3%ADaco])
	(problemas+contraindicados
		[Articular]
		[Rodillas])
	(repeticiones+maximas 200)
	(repeticiones+minimas 10))

([Subir+tramos+de+escalera] of  Test
)

([Television] of  Estatica

	(duracion 0)
	(frequencia None))

([Trapecio] of  Grupo+muscular
)

([Tr%C3%ADceps] of  Grupo+muscular
)

)



)
;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction si-o-no-p (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE 
       else FALSE))
       
(deffunction pregunta-general (?pregunta) 
	(format t "%s" ?pregunta) 
	(bind ?respuesta (read)) 
	?respuesta
)

(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi) 
	(format t "%s [%d,%d] " ?pregunta ?rangini ?rangfi) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "¿%s? [%d,%d] " ?pregunta ?rangini ?rangfi) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

;;****************
;;* REGLAS       *
;;****************       

(defmodule MAIN (export ?ALL))

(defrule presentacion 
    (declare (salience 10))
    =>
    (printout t "----------------------------" crlf)
    (printout t "--Sistema de recomendacion--" crlf)
    (printout t "-----de entrenamientos------" crlf)
    (printout t "----------------------------" crlf)
    (printout t "----I'm no couch potato-----" crlf)
    (printout t "----------------------------" crlf)
    (printout t crlf)
    (focus preguntas-persona)

)
       
       
(defmodule preguntas-persona "Modulo de preguntas sobnre la persona"
  (import MAIN ?ALL)
  (export ?ALL))
  
(defrule pregunta-nombre
    =>
    (bind ?nombre (pregunta-general "Nombre: "))
    (assert (nombre ?nombre))
)

(defrule crea-persona
    (nombre ?nombre)
    (test (not (any-instancep ((?persona Persona)) (eq (str-compare ?persona:nombre ?nombre) 0))))
    =>
    (bind ?persona (make-instance persona of Persona))
    (bind ?altura (pregunta-numerica "Altura (m): " 0.0 3.0))
    (send ?persona put-altura ?altura)
    (bind ?peso (pregunta-numerica "Peso (kg): " 0.0 600.0))
    (send ?persona put-altura ?peso)
    (send ?persona put-imc (/ ?peso (* ?altura ?altura)))
)