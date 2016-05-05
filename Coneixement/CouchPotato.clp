; Thu May 05 11:59:51 CEST 2016
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot grado
;+		(comment "1 - 2")
		(type INTEGER)
		(range 1 2)
;+		(cardinality 1 1)
		(create-accessor read-write))
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
	(multislot tiempo+diario+disponible
;+		(comment "tiempo diario en minutos")
		(type INTEGER)
		(range 30 1440)
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
	(single-slot tipo
		(type INTEGER)
		(range 1 4)
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
	(single-slot duracion+minima
;+		(comment "en minutos")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot cansancio
		(type SYMBOL)
		(allowed-values Mucho Poco Nada)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion
;+		(comment "en minutos")
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot sabado
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot lunes
;+		(comment "ejercicios lunes")
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
	(single-slot ejercicio
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot problemas+aliviados
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write))
	(single-slot frequencia
		(type SYMBOL)
		(allowed-values Diaria Semanal Mensual None)
		(default None)
;+		(cardinality 0 1)
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
;+		(cardinality 1 1)
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
	(single-slot peso
		(type FLOAT)
		(default 75.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tests
		(type INSTANCE)
;+		(allowed-classes Test)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
		(default "Paco")
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
	(multislot problemas+fisicos
		(type INSTANCE)
;+		(allowed-classes Problema)
		(create-accessor read-write))
	(single-slot pMin
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dieta
		(type INSTANCE)
;+		(allowed-classes Dieta)
;+		(cardinality 1 1)
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
;+		(cardinality 1 1)
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
;+		(cardinality 1 1)
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
;+		(cardinality 1 1)
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
	(role concrete))

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

(defclass Problema+IMC
	(is-a Problema)
	(role concrete))

(defclass Objetivo
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
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
	(multislot jueves
;+		(comment "ejercicios jueves")
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(multislot objetivos
		(type INSTANCE)
;+		(allowed-classes Objetivo)
		(create-accessor read-write))
	(multislot tiempo+diario+disponible
;+		(comment "tiempo diario en minutos")
		(type INTEGER)
		(range 30 1440)
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
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad+maxima
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ejercicios+combinan
		(type INSTANCE)
;+		(allowed-classes Ejercicio)
		(create-accessor read-write))
	(single-slot edad+minima
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot objetivos
		(type INSTANCE)
;+		(allowed-classes Objetivo)
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
;+		(cardinality 1 1)
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
; Thu May 05 11:59:52 CEST 2016
; 
;+ (version "3.5")
;+ (build "Build 663")

([Articular] of  Problema+musculo-esqueletico

	(nombre "Articular"))

([Barrer] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(nombre "Barrer"))

([Bicicleta+estatica] of  Ejercicio+con+aparatos

	(calorias+quemadas 6.4)
	(duracion+maxima 90)
	(duracion+minima 20)
	(edad+maxima 60)
	(edad+minima 12)
	(ejercicios+combinan
		[Cinta+de+correr]
		[Stepper])
	(grupos+musculares
		[Cuadriceps]
		[Gemelos]
		[Gluteos])
	(nombre "Bicicleta estatica")
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Articular]
		[Rodillas]))

([Brazos] of  Problema+musculo-esqueletico

	(nombre "Brazos")
	(zona
		[B%C3%ADceps]
		[Deltoides]
		[Dorsal]
		[Tr%C3%ADceps]))

([B%C3%ADceps] of  Grupo+muscular

	(nombre "Biceps"))

([Carrera+sostenida] of  Test

	(nombre "Carrera sostenida"))

([Cinta+de+correr] of  Ejercicio+con+aparatos

	(duracion+minima 20)
	(edad+minima 12)
	(ejercicios+combinan
		[Bicicleta+estatica]
		[Stepper])
	(grupos+musculares
		[Gemelos]
		[Tr%C3%ADceps])
	(nombre "Cinta de correr")
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Presion+alta]
		[Articular]
		[Rodillas]))

([Colada] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(nombre "Colada"))

([Compra] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(nombre "Compra"))

([CouchPotato_Class0] of  Ejercicio+con+aparatos

	(calorias+quemadas 4.0)
	(duracion+maxima 30)
	(duracion+minima 10)
	(edad+minima 12)
	(ejercicios+combinan [Pesos])
	(grupos+musculares
		[B%C3%ADceps]
		[Deltoides]
		[Trapecio]
		[Tr%C3%ADceps])
	(nombre "Pesos brazos")
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Presion+alta]
		[Articular])
	(repeticiones+minimas 10))

([CouchPotato_Class2] of  Problema+IMC

	(nombre "Peso insuficiente"))

([CouchPotato_Class3] of  Problema+IMC

	(nombre "Obesidad tipo 1"))

([CouchPotato_Class4] of  Problema+IMC

	(nombre "Obesidad tipo 2"))

([CouchPotato_Class5] of  Problema+IMC

	(nombre "Obesidad tipo 3"))

([CouchPotato_Class6] of  Problema+IMC

	(nombre "Obesidad tipo 4"))

([CouchPotato_Class7] of  Problema+IMC

	(nombre "Sobrepeso grado 1"))

([CouchPotato_Class8] of  Problema+IMC

	(nombre "Sobrepeso grado 2"))

([CouchPotato_Class9] of  Ejercicio+de+suelo
)

([Cuadriceps] of  Grupo+muscular

	(nombre "Cuadriceps"))

([Cuello] of  Problema+musculo-esqueletico

	(nombre "Cuello")
	(zona [Trapecio]))

([Cuidar+del+jard%C3%ADn] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(nombre "Cuidar del jardin"))

([De+pie] of  Actividad+de+Trabajo

	(nombre "De pie"))

([Deltoides] of  Grupo+muscular

	(nombre "Deltoides"))

([Desplazamiento+a+pie] of  Actividad+de+Trabajo

	(nombre "Desplazamientos a pie"))

([Dorsal] of  Grupo+muscular

	(nombre "Dorsal"))

([Equilibrio] of  Objetivo

	(nombre "Equilibrio"))

([Esfuerzos+musculares] of  Actividad+de+Trabajo

	(nombre "Esfuerzos musculares"))

([Espalda] of  Problema+musculo-esqueletico

	(nombre "Espalda")
	(zona
		[Dorsal]
		[Trapecio]))

([Flexibilidad] of  Objetivo

	(nombre "Flexibilidad"))

([Fregar] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(nombre "Fregar"))

([Gemelos] of  Grupo+muscular

	(nombre "Gemelos"))

([Gluteos] of  Grupo+muscular

	(nombre "Gluteos"))

([Lectura] of  Estatica

	(duracion 0)
	(frequencia None)
	(nombre "Lectura"))

([Levantamiento+de+peso] of  Actividad+de+Trabajo

	(nombre "Levantamiento de peso"))

([Mantenimiento] of  Objetivo

	(nombre "Mantenimiento"))

([Movimientos+Repetitivos] of  Actividad+de+Trabajo

	(nombre "Movimientos repetitivos"))

([Paseo] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(nombre "Paseo"))

([Paseo+mascota] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(nombre "Paseo mascota"))

([Pesos] of  Ejercicio+con+aparatos

	(calorias+quemadas 5.0)
	(duracion+maxima 30)
	(duracion+minima 10)
	(edad+minima 12)
	(ejercicios+combinan [CouchPotato_Class0])
	(grupos+musculares
		[Cuadriceps]
		[Gemelos]
		[Gluteos])
	(nombre "Pesos piernas")
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Presion+alta]
		[Articular]
		[Rodillas])
	(repeticiones+minimas 10))

([Planchar] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(nombre "Planchar"))

([Ponerse+en+forma] of  Objetivo

	(nombre "Ponerse en forma"))

([Presion+alta] of  Otros+problemas

	(nombre "Presion alta"))

([Rebajar+Peso] of  Objetivo

	(nombre "Rebajar peso"))

([Remo] of  Ejercicio+con+aparatos

	(calorias+quemadas 10.0)
	(grupos+musculares
		[B%C3%ADceps]
		[Cuadriceps]
		[Dorsal]
		[Gemelos]
		[Tr%C3%ADceps]
		[Deltoides]
		[Gluteos])
	(nombre "Remo")
	(problemas+aliviados
		[Articular]
		[Rodillas])
	(repeticiones+minimas 20))

([Rodillas] of  Problema+musculo-esqueletico

	(nombre "Rodillas")
	(zona [Gemelos]))

([Salir+a+correr] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(nombre "Salir a correr"))

([Sentado] of  Actividad+de+Trabajo

	(nombre "Sentado"))

([Sistema+Card%C3%ADaco] of  Objetivo

	(nombre "Sistema cardiaco"))

([Stepper] of  Ejercicio+con+aparatos

	(calorias+quemadas 6.1)
	(duracion+maxima 30)
	(duracion+minima 10)
	(edad+maxima 55)
	(ejercicios+combinan
		[Cinta+de+correr]
		[Bicicleta+estatica])
	(grupos+musculares
		[Cuadriceps]
		[Gemelos]
		[Gluteos])
	(nombre "Stepper")
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Articular]
		[Rodillas])
	(repeticiones+maximas 200)
	(repeticiones+minimas 10))

([Subir+tramos+de+escalera] of  Test

	(nombre "Subir tramos escalera"))

([Television] of  Estatica

	(duracion 0)
	(frequencia None)
	(nombre "Television"))

([Trapecio] of  Grupo+muscular

	(nombre "Trapecio"))

([Tr%C3%ADceps] of  Grupo+muscular

	(nombre "Triceps"))

)

([Troll] of Persona
	(nombre "Inigo")
	(altura 1.9)
	(peso 75)
	(imc 20))



)
;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
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
		(format t "%s [%d,%d] " ?pregunta ?rangini ?rangfi) 
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

(deffunction anadir-ProblemaIMC (?persona ?problema)
	(bind ?instancia (find-instance ((?p Problema+IMC)) (eq (str-compare ?p:nombre ?problema) 0)))
	(slot-insert$ ?persona problemas+fisicos 1 ?instancia)
)

(defrule crea-persona
    (nombre ?nombre)
    (test (not (any-instancep ((?persona Persona)) (eq (str-compare ?persona:nombre ?nombre) 0))))
    =>
    (bind ?persona (make-instance persona of Persona))
	(send ?persona put-nombre ?nombre)
    (bind ?altura (pregunta-numerica "Altura (m): " 0.0 3.0))
    (send ?persona put-altura ?altura)
    (bind ?peso (pregunta-numerica "Peso (kg): " 0.0 600.0))
    (send ?persona put-peso ?peso)
	(bind ?imc (/ ?peso (* ?altura ?altura)))
    (send ?persona put-imc ?imc)
	(if (< ?imc 18.5) then (anadir-ProblemaIMC ?persona "Peso insuficiente") else
		(if (> ?imc 50) then (anadir-ProblemaIMC ?persona "Obesidad tipo 4") else
			(if (> ?imc 40) then (anadir-ProblemaIMC ?persona "Obesidad tipo 3") else
				(if (> ?imc 35) then (anadir-ProblemaIMC ?persona "Obesidad tipo 2") else 
					(if (> ?imc 30) then (anadir-ProblemaIMC ?persona "Obesidad tipo 1") else
						(if (> ?imc 27) then (anadir-ProblemaIMC ?persona "Sobrepeso grado 2") else 
							(if (> ?imc 25) then (anadir-ProblemaIMC ?persona "Sobrepeso grado 1"))
						)
					)
				)
			)
		)
	)
    (bind ?pMin (pregunta-numerica "Cual es tu presion sanguinea minima (diastolica)? " 0.0 200.0))
	(bind ?pMax (pregunta-numerica "Cual es tu presion sanguinea maxima (sistolica)? " 0.0 200.0))
    (send ?persona put-pMin ?pMin)
    (send ?persona put-pMax ?pMax)
	(if (or (>= ?pMin 90) (>= ?pMax 140)) then 
		(bind ?instancia (find-instance ((?p Otros+problemas)) (eq (str-compare ?p:nombre "Presion alta") 0)))
		(slot-insert$ ?persona problemas+fisicos 1 ?instancia)
	)
)

(defrule pide-actividades
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?lista_actividades (find-all-instances ((?a Actividad)) TRUE))
	(printout t "0 : Deja de añadir" crlf)
	(loop-for-count (?i 1 (length$ ?lista_actividades)) do
		(bind ?aux (nth$ ?i ?lista_actividades))
		(printout t ?i " : " (class ?aux) " : " (send ?aux get-nombre) crlf)
	)
	(bind ?respuesta (pregunta-numerica "Que actividad quieres anadir? " 0 (length$ ?lista_actividades)))
	(while (> ?respuesta 0) do 
		(bind ?actividad (nth$ ?respuesta ?lista_actividades))
		(send ?actividad put-duracion   (pregunta-numerica "Cuanto dura la actividad? (minutos)" 0 600))
		(send ?actividad put-frequencia (ask-question "Con que frequencia? [Diaria|Semanal|Mensual] " Diaria Semanal Mensual))
		(slot-insert$ ?persona actividades 1 ?actividad)
		(bind ?respuesta (pregunta-numerica "Que actividad quieres anadir? " 0 (length$ ?lista_actividades)))
	)
)
)



(defrule crea-dieta
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?dieta (make-instance dieta of Dieta))
	(send ?dieta put-nombre "Much WOW")
    (bind ?sal (pregunta-numerica "Consumo de sal: " 0.0 10.0))
    (send ?dieta put-abuso+de+sal ?sal)
	(bind ?picar (pregunta-numerica "Picoteo entre horas: " 0.0 10.0))
    (send ?dieta put-picar+entre+horas ?picar)
    (bind ?fruta (pregunta-numerica "Cuantas piezas de fruta tomas a la semana? " 0.0 500.0))
    (send ?dieta put-consumo+de+fruta ?fruta)
)

