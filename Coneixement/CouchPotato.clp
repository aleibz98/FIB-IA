; Mon May 23 17:02:01 CEST 2016
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
	(single-slot persona
		(type INSTANCE)
;+		(allowed-classes Persona)
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
	(single-slot repeticiones_max
		(type INTEGER)
;+		(cardinality 0 1)
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
	(single-slot pasteleria
;+		(comment "veces a la semana")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot gradoActividad
		(type INTEGER)
		(range -50 50)
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
	(multislot grupo_muscular
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
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
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot altura
		(type FLOAT)
		(default 1.7)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot repeticiones_min
		(type INTEGER)
;+		(cardinality 0 1)
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
	(single-slot nombre
		(type STRING)
		(default "Paco")
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
	(multislot objetivos
		(type INSTANCE)
;+		(allowed-classes Objetivo)
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
	(single-slot edad
		(type INTEGER)
		(default 25)
;+		(cardinality 1 1)
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
		(create-accessor read-write))
	(single-slot gradoActividad
		(type INTEGER)
		(range -50 50)
;+		(cardinality 1 1)
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
	(single-slot pasteleria
;+		(comment "veces a la semana")
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
	(multislot grupo_muscular
		(type INSTANCE)
;+		(allowed-classes Grupo+muscular)
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

(definstances instances
; Mon May 23 17:02:01 CEST 2016
; 
;+ (version "3.5")
;+ (build "Build 663")

([Articular] of  Problema+musculo-esqueletico

	(nombre "Articular"))

([Barrer] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(gradoActividad 20)
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
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Sistema+Card%C3%ADaco]
		[Rebajar+Peso])
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

	(calorias+quemadas 6.2)
	(duracion+maxima 120)
	(duracion+minima 20)
	(edad+maxima 80)
	(edad+minima 12)
	(ejercicios+combinan
		[Bicicleta+estatica]
		[Stepper])
	(grupos+musculares
		[Gemelos]
		[Tr%C3%ADceps])
	(nombre "Cinta de correr")
	(objetivos
		[Mantenimiento]
		[Sistema+Card%C3%ADaco]
		[Rebajar+Peso]
		[Rebajar+Peso])
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Presion+alta]
		[Articular]
		[Rodillas]
		[CouchPotato_Class6]))

([Colada] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(gradoActividad 15)
	(nombre "Hacer colada"))

([Compra] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(gradoActividad 30)
	(nombre "Comprar"))

([CouchPotato_Class0] of  Ejercicio+con+aparatos

	(calorias+quemadas 4.0)
	(duracion+maxima 30)
	(duracion+minima 10)
	(edad+maxima 100)
	(edad+minima 12)
	(ejercicios+combinan [Pesos])
	(grupos+musculares
		[B%C3%ADceps]
		[Deltoides]
		[Trapecio]
		[Tr%C3%ADceps])
	(nombre "Pesos brazos")
	(objetivos
		[Ponerse+en+forma]
		[CouchPotato_Class30])
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

([CouchPotato_Class10] of  Ejercicio+con+pesas

	(calorias+quemadas 3.4)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 10)
	(ejercicios+combinan
		[CouchPotato_Class12]
		[CouchPotato_Class15]
		[CouchPotato_Class11]
		[CouchPotato_Class16]
		[CouchPotato_Class13])
	(grupos+musculares
		[CouchPotato_Class14]
		[CouchPotato_Class21])
	(nombre "Pecho")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco]
		[CouchPotato_Class30])
	(problemas+aliviados
		[CouchPotato_Class8]
		[CouchPotato_Class7]
		[CouchPotato_Class6]
		[CouchPotato_Class5])
	(problemas+contraindicados [Espalda])
	(repeticiones+maximas 50)
	(repeticiones+minimas 10))

([CouchPotato_Class10001] of  Persona

	(altura 1.7)
	(edad 50)
	(imc 22.0)
	(nombre "Test1")
	(peso 75.0)
	(pMax 100.0)
	(pMin 80.0))

([CouchPotato_Class11] of  Ejercicio+con+pesas

	(calorias+quemadas 3.0)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 10)
	(ejercicios+combinan
		[CouchPotato_Class12]
		[CouchPotato_Class15]
		[CouchPotato_Class10]
		[CouchPotato_Class16]
		[CouchPotato_Class13])
	(grupos+musculares
		[Deltoides]
		[Trapecio])
	(nombre "Hombro")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco]
		[CouchPotato_Class30])
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Articular]
		[Brazos])
	(repeticiones+maximas 50)
	(repeticiones+minimas 10))

([CouchPotato_Class12] of  Ejercicio+con+pesas

	(calorias+quemadas 3.4)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 10)
	(ejercicios+combinan
		[CouchPotato_Class15]
		[CouchPotato_Class11]
		[CouchPotato_Class10]
		[CouchPotato_Class16]
		[CouchPotato_Class13])
	(grupos+musculares [B%C3%ADceps])
	(nombre "Biceps")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco]
		[CouchPotato_Class30])
	(problemas+aliviados
		[Brazos]
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados [Brazos])
	(repeticiones+maximas 50)
	(repeticiones+minimas 10))

([CouchPotato_Class13] of  Ejercicio+con+pesas

	(calorias+quemadas 3.6)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 10)
	(ejercicios+combinan
		[CouchPotato_Class12]
		[CouchPotato_Class15]
		[CouchPotato_Class11]
		[CouchPotato_Class10]
		[CouchPotato_Class16])
	(grupos+musculares [Tr%C3%ADceps])
	(nombre "Triceps")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco]
		[CouchPotato_Class30])
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados [Rodillas])
	(repeticiones+maximas 50)
	(repeticiones+minimas 10))

([CouchPotato_Class14] of  Grupo+muscular

	(nombre "Pectoral"))

([CouchPotato_Class15] of  Ejercicio+con+pesas

	(calorias+quemadas 3.1)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 10)
	(ejercicios+combinan
		[CouchPotato_Class12]
		[CouchPotato_Class11]
		[CouchPotato_Class10]
		[CouchPotato_Class16]
		[CouchPotato_Class13])
	(grupos+musculares
		[Deltoides]
		[Trapecio]
		[Dorsal])
	(nombre "Espalda")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco]
		[CouchPotato_Class30])
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados [Espalda])
	(repeticiones+maximas 50)
	(repeticiones+minimas 10))

([CouchPotato_Class16] of  Ejercicio+con+pesas

	(calorias+quemadas 4.1)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 10)
	(ejercicios+combinan
		[CouchPotato_Class12]
		[CouchPotato_Class15]
		[CouchPotato_Class11]
		[CouchPotato_Class10]
		[CouchPotato_Class13])
	(grupos+musculares
		[Cuadriceps]
		[Gemelos])
	(nombre "Piernas")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco]
		[CouchPotato_Class30])
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Rodillas]
		[Articular])
	(repeticiones+maximas 50)
	(repeticiones+minimas 10))

([CouchPotato_Class17] of  Ejercicio+de+suelo

	(calorias+quemadas 5.1)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 5)
	(ejercicios+combinan
		[CouchPotato_Class9]
		[CouchPotato_Class20])
	(grupos+musculares
		[B%C3%ADceps]
		[CouchPotato_Class14])
	(nombre "Flexiones")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso])
	(problemas+aliviados
		[CouchPotato_Class8]
		[CouchPotato_Class7]
		[CouchPotato_Class6]
		[CouchPotato_Class5]
		[CouchPotato_Class4]
		[CouchPotato_Class3])
	(problemas+contraindicados
		[Presion+alta]
		[CouchPotato_Class2]
		[Brazos]
		[Articular])
	(repeticiones+maximas 100)
	(repeticiones+minimas 10))

([CouchPotato_Class2] of  Problema+IMC

	(nombre "Peso insuficiente"))

([CouchPotato_Class20] of  Ejercicio+de+suelo

	(calorias+quemadas 2.5)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 5)
	(ejercicios+combinan
		[CouchPotato_Class9]
		[CouchPotato_Class17])
	(grupos+musculares
		[CouchPotato_Class21]
		[Gluteos])
	(nombre "Hipopresivos")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso])
	(problemas+aliviados
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class7]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Rodillas]
		[CouchPotato_Class2]
		[Presion+alta])
	(repeticiones+maximas 50)
	(repeticiones+minimas 10))

([CouchPotato_Class21] of  Grupo+muscular

	(nombre "Abdominales"))

([CouchPotato_Class24] of  Estiramientos

	(calorias+quemadas 1.0)
	(duracion+maxima 5)
	(duracion+minima 2)
	(edad+maxima 100)
	(edad+minima 5)
	(ejercicios+combinan
		[CouchPotato_Class26]
		[CouchPotato_Class25])
	(grupos+musculares
		[B%C3%ADceps]
		[Deltoides]
		[Tr%C3%ADceps])
	(nombre "Brazos")
	(problemas+aliviados
		[Articular]
		[Brazos])
	(repeticiones+maximas 4)
	(repeticiones+minimas 2))

([CouchPotato_Class25] of  Estiramientos

	(calorias+quemadas 1.0)
	(duracion+maxima 5)
	(duracion+minima 2)
	(edad+maxima 100)
	(edad+minima 5)
	(ejercicios+combinan
		[CouchPotato_Class24]
		[CouchPotato_Class26])
	(nombre "Piernas")
	(problemas+aliviados
		[Articular]
		[Rodillas])
	(repeticiones+maximas 4)
	(repeticiones+minimas 2))

([CouchPotato_Class26] of  Estiramientos

	(calorias+quemadas 1.0)
	(duracion+maxima 5)
	(duracion+minima 2)
	(edad+maxima 100)
	(edad+minima 5)
	(ejercicios+combinan
		[CouchPotato_Class24]
		[CouchPotato_Class25])
	(grupos+musculares
		[Deltoides]
		[Dorsal]
		[Trapecio])
	(nombre "Espalda")
	(problemas+aliviados
		[Articular]
		[Cuello]
		[Espalda])
	(repeticiones+maximas 4)
	(repeticiones+minimas 2))

([CouchPotato_Class3] of  Problema+IMC

	(nombre "Obesidad tipo 1"))

([CouchPotato_Class30] of  Musculacion

	(nombre "Musculacion"))

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

	(calorias+quemadas 4.5)
	(duracion+maxima 20)
	(duracion+minima 5)
	(edad+maxima 80)
	(edad+minima 5)
	(ejercicios+combinan
		[CouchPotato_Class17]
		[CouchPotato_Class20])
	(grupos+musculares [CouchPotato_Class21])
	(nombre "Abdominales")
	(objetivos
		[Mantenimiento]
		[Sistema+Card%C3%ADaco])
	(problemas+aliviados
		[CouchPotato_Class7]
		[CouchPotato_Class3]
		[CouchPotato_Class4]
		[CouchPotato_Class5]
		[CouchPotato_Class6]
		[CouchPotato_Class8])
	(problemas+contraindicados
		[Espalda]
		[Presion+alta]
		[CouchPotato_Class2]
		[Cuello])
	(repeticiones+maximas 100)
	(repeticiones+minimas 10))

([Cuadriceps] of  Grupo+muscular

	(nombre "Cuadriceps"))

([Cuello] of  Problema+musculo-esqueletico

	(nombre "Cuello")
	(zona [Trapecio]))

([Cuidar+del+jard%C3%ADn] of  Tarea+domestica

	(duracion 0)
	(frequencia None)
	(gradoActividad 30)
	(nombre "Cuidar del jardin"))

([De+pie] of  Actividad+de+Trabajo

	(gradoActividad 10)
	(nombre "Estar de pie"))

([Deltoides] of  Grupo+muscular

	(nombre "Deltoides"))

([Desplazamiento+a+pie] of  Actividad+de+Trabajo

	(gradoActividad 10)
	(nombre "Desplazamientos a pie"))

([Dorsal] of  Grupo+muscular

	(nombre "Dorsal"))

([Equilibrio] of  Objetivo

	(nombre "Equilibrio"))

([Esfuerzos+musculares] of  Actividad+de+Trabajo

	(gradoActividad 15)
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
	(gradoActividad 20)
	(nombre "Fregar"))

([Gemelos] of  Grupo+muscular

	(nombre "Gemelos"))

([Gluteos] of  Grupo+muscular

	(nombre "Gluteos"))

([Lectura] of  Estatica

	(duracion 0)
	(frequencia None)
	(gradoActividad -2)
	(nombre "Leer"))

([Levantamiento+de+peso] of  Actividad+de+Trabajo

	(gradoActividad 20)
	(nombre "Levantamiento de peso"))

([Mantenimiento] of  Objetivo

	(nombre "Mantenimiento"))

([Movimientos+Repetitivos] of  Actividad+de+Trabajo

	(gradoActividad 5)
	(nombre "Movimientos repetitivos"))

([Paseo] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(gradoActividad 30)
	(nombre "Pasear"))

([Paseo+mascota] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(gradoActividad 35)
	(nombre "Pasear mascota"))

([Pesos] of  Ejercicio+con+aparatos

	(calorias+quemadas 5.0)
	(duracion+maxima 30)
	(duracion+minima 10)
	(edad+maxima 100)
	(edad+minima 12)
	(ejercicios+combinan [CouchPotato_Class0])
	(grupos+musculares
		[Cuadriceps]
		[Gemelos]
		[Gluteos])
	(nombre "Pesos piernas")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[CouchPotato_Class30])
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
	(gradoActividad 15)
	(nombre "Planchar"))

([Ponerse+en+forma] of  Objetivo

	(nombre "Ponerse en forma"))

([Presion+alta] of  Otros+problemas

	(nombre "Presion alta"))

([Rebajar+Peso] of  Objetivo

	(nombre "Rebajar peso"))

([Remo] of  Ejercicio+con+aparatos

	(calorias+quemadas 10.0)
	(duracion+maxima 120)
	(duracion+minima 10)
	(edad+maxima 100)
	(edad+minima 10)
	(ejercicios+combinan
		[CouchPotato_Class15]
		[CouchPotato_Class26]
		[CouchPotato_Class17])
	(grupos+musculares
		[B%C3%ADceps]
		[Cuadriceps]
		[Dorsal]
		[Gemelos]
		[Tr%C3%ADceps]
		[Deltoides]
		[Gluteos])
	(nombre "Remo")
	(objetivos
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco]
		[CouchPotato_Class30])
	(problemas+aliviados
		[Articular]
		[Rodillas])
	(problemas+contraindicados
		[CouchPotato_Class6]
		[CouchPotato_Class2]
		[Brazos]
		[Presion+alta]
		[CouchPotato_Class2])
	(repeticiones+minimas 20))

([Rodillas] of  Problema+musculo-esqueletico

	(nombre "Rodillas")
	(zona [Gemelos]))

([Salir+a+correr] of  Desplazamiento

	(duracion 0)
	(frequencia None)
	(gradoActividad 50)
	(nombre "Salir a correr"))

([Sentado] of  Actividad+de+Trabajo

	(gradoActividad -2)
	(nombre "Estar sentado"))

([Sistema+Card%C3%ADaco] of  Objetivo

	(nombre "Sistema cardiaco"))

([Stepper] of  Ejercicio+con+aparatos

	(calorias+quemadas 6.1)
	(duracion+maxima 30)
	(duracion+minima 10)
	(edad+maxima 55)
	(edad+minima 14)
	(ejercicios+combinan
		[Cinta+de+correr]
		[Bicicleta+estatica])
	(grupos+musculares
		[Cuadriceps]
		[Gemelos]
		[Gluteos])
	(nombre "Stepper")
	(objetivos
		[Equilibrio]
		[Mantenimiento]
		[Ponerse+en+forma]
		[Rebajar+Peso]
		[Sistema+Card%C3%ADaco])
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
	(gradoActividad -5)
	(nombre "Ver la television"))

([Trapecio] of  Grupo+muscular

	(nombre "Trapecio"))

([Tr%C3%ADceps] of  Grupo+muscular

	(nombre "Triceps"))

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
      )
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

(deffunction print-program (?programa)
    (printout t "-----Programa propuesto-----"crlf)
    (printout t crlf"----------" crlf "  Lunes" crlf "----------" crlf)
    (bind ?lista (send ?programa get-lunes))
    (loop-for-count (?i 1 (length$ ?lista)) do
        (bind ?aux (nth$ ?i ?lista))
        (printout t (send ?aux get-nombre) crlf)
    )

    (printout t crlf"----------" crlf "  Martes" crlf "----------" crlf)
    (bind ?lista (send ?programa get-martes))
    (loop-for-count (?i 1 (length$ ?lista)) do
        (bind ?aux (nth$ ?i ?lista))
        (printout t (send ?aux get-nombre) crlf)
    )

    (printout t crlf"----------" crlf "Miercoles" crlf "----------" crlf)
    (bind ?lista (send ?programa get-miercoles))
    (loop-for-count (?i 1 (length$ ?lista)) do
        (bind ?aux (nth$ ?i ?lista))
        (printout t (send ?aux get-nombre) crlf)
    )

    (printout t crlf"----------" crlf "  Jueves" crlf "----------" crlf)
    (bind ?lista (send ?programa get-jueves))
    (loop-for-count (?i 1 (length$ ?lista)) do
        (bind ?aux (nth$ ?i ?lista))
        (printout t (send ?aux get-nombre) crlf)
    )

    (printout t crlf"----------" crlf " Viernes" crlf "----------" crlf)
    (bind ?lista (send ?programa get-viernes))
    (loop-for-count (?i 1 (length$ ?lista)) do
        (bind ?aux (nth$ ?i ?lista))
        (printout t (send ?aux get-nombre) crlf)
    )

    (printout t crlf"----------" crlf "  Sabado" crlf "----------" crlf)
    (bind ?lista (send ?programa get-sabado))
    (loop-for-count (?i 1 (length$ ?lista)) do
        (bind ?aux (nth$ ?i ?lista))
        (printout t (send ?aux get-nombre) crlf)
    )

    (printout t crlf"----------" crlf " Domingo" crlf "----------" crlf)
    (bind ?lista (send ?programa get-domingo))
    (loop-for-count (?i 1 (length$ ?lista)) do
        (bind ?aux (nth$ ?i ?lista))
        (printout t (send ?aux get-nombre) crlf)
    )
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
	(bind ?edad (pregunta-numerica "Edad (anos): " 0.0 100.0))
    (send ?persona put-edad ?edad)
    (bind ?altura (pregunta-numerica "Altura (m): " 0.0 3.0))
    (send ?persona put-altura ?altura)
    (bind ?peso (pregunta-numerica "Peso (kg): " 0.0 600.0))
    (send ?persona put-peso ?peso)
	(bind ?imc (/ ?peso (* ?altura ?altura)))
    (send ?persona put-imc ?imc)
	(if (< ?imc 18.5) then (anadir-ProblemaIMC ?persona "Peso insuficiente") (assert(preFitness -1000)) else
		(if (> ?imc 50) then (anadir-ProblemaIMC ?persona "Obesidad tipo 4") (assert(preFitness -3000))else
			(if (> ?imc 40) then (anadir-ProblemaIMC ?persona "Obesidad tipo 3") (assert(preFitness -2000)) else
				(if (> ?imc 35) then (anadir-ProblemaIMC ?persona "Obesidad tipo 2") (assert(preFitness -1600))else 
					(if (> ?imc 30) then (anadir-ProblemaIMC ?persona "Obesidad tipo 1") (assert(preFitness -1200))else
						(if (> ?imc 27) then (anadir-ProblemaIMC ?persona "Sobrepeso grado 2") (assert(preFitness -700)) else 
							(if (> ?imc 25) then (anadir-ProblemaIMC ?persona "Sobrepeso grado 1") (assert(preFitness -300)) else (assert(preFitness 500)))
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
	(bind ?respuesta (si-o-no-p "Tienes trabajo? "))
	(if (eq ?respuesta TRUE) then (assert(actividad "trabajo")))
	(bind ?respuesta (si-o-no-p "Llevas a cabo tareas domesticas regularmente? "))
	(if (eq ?respuesta TRUE) then (assert(actividad "domesticas")))
	(bind ?respuesta (si-o-no-p "Haces otras actividades? "))
	(if (eq ?respuesta TRUE) then (assert(actividad "otras")))
	(bind ?respuesta (si-o-no-p "Tienes problemas musculo-esqueleticos? "))
	(if (eq ?respuesta TRUE) then (assert(problemas)))
)

(defrule pide-actividades-trabajo
	(declare (salience 30))
	(actividad "trabajo")
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?lista_actividades (find-all-instances ((?a Actividad+de+Trabajo)) TRUE))
	
	(printout t crlf "0 : Ya esta" crlf)
	(loop-for-count (?i 1 (length$ ?lista_actividades)) do
		(bind ?aux (nth$ ?i ?lista_actividades))
		(printout t ?i " : " (send ?aux get-nombre) crlf)
	)
	(printout t  crlf)
	(bind ?respuesta (pregunta-numerica "Que actividad haces en el trabajo? " 0 (length$ ?lista_actividades)))
	(while (> ?respuesta 0) do 
		(bind ?actividad (nth$ ?respuesta ?lista_actividades))
		(send ?actividad put-duracion   (pregunta-numerica "Durante cuanto tiempo? (minutos)" 0 600))
		(send ?actividad put-frequencia Diaria)
		(slot-insert$ ?persona actividades 1 ?actividad)	
		(bind ?respuesta (pregunta-numerica "Cual mas? " 0 (length$ ?lista_actividades)))
	)
)

(defrule pide-actividades-domesticas
	(declare (salience 20))
	(actividad "domesticas")
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?lista_actividades (find-all-instances ((?a Tarea+domestica)) TRUE))
	
	(printout t crlf "0 : Ya esta" crlf)
	(loop-for-count (?i 1 (length$ ?lista_actividades)) do
		(bind ?aux (nth$ ?i ?lista_actividades))
		(printout t ?i " : " (send ?aux get-nombre) crlf)
	)
	(printout t  crlf)
	(bind ?respuesta (pregunta-numerica "Que actividad domestica de estas haces? " 0 (length$ ?lista_actividades)))
	(while (> ?respuesta 0) do 
		(bind ?actividad (nth$ ?respuesta ?lista_actividades))
		(send ?actividad put-duracion   (pregunta-numerica "Cuanto dura la actividad? (minutos)" 0 600))
		(send ?actividad put-frequencia (ask-question "Con que frequencia lo haces? [Diaria|Semanal|Mensual] " Diaria Semanal Mensual))
		(slot-insert$ ?persona actividades 1 ?actividad)	
		(bind ?respuesta (pregunta-numerica "Cual mas? " 0 (length$ ?lista_actividades)))
	)
)

(defrule pide-actividades-otras
    (declare (salience 10))
	(actividad "otras")
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?lista_actividades (find-all-instances ((?a Estatica)) TRUE))
	(bind ?lista_actividades2 (find-all-instances ((?a Desplazamiento)) TRUE))
	
	(printout t crlf "0 : Ya esta" crlf)
	(loop-for-count (?i 1 (length$ ?lista_actividades)) do
		(bind ?aux (nth$ ?i ?lista_actividades))
		(printout t ?i " : " (send ?aux get-nombre) crlf)
	)
	
	(loop-for-count (?i 1 (length$ ?lista_actividades2)) do
		(bind ?aux (nth$ ?i ?lista_actividades2))
		(printout t (+ ?i (length$ ?lista_actividades)) " : " (send ?aux get-nombre) crlf)
	)
	
	(bind ?respuesta (pregunta-numerica "Que actividad de estas haces? " 0 (+ (length$ ?lista_actividades2)(length$ ?lista_actividades))))
	(while (> ?respuesta 0) do 
		(if (<= ?respuesta (length$ ?lista_actividades)) then
		(bind ?actividad (nth$ ?respuesta ?lista_actividades)) else
			(bind ?actividad (nth$ (- ?respuesta (length$ ?lista_actividades)) ?lista_actividades2))
		)
		(send ?actividad put-duracion   (pregunta-numerica "Cuanto dura la actividad? (minutos)" 0 600))
		(send ?actividad put-frequencia (ask-question "Con que frequencia lo haces? [Diaria|Semanal|Mensual] " Diaria Semanal Mensual))
		(slot-insert$ ?persona actividades 1 ?actividad)	
		(bind ?respuesta (pregunta-numerica "Cual mas? " 0 (+ (length$ ?lista_actividades)(length$ ?lista_actividades2))))
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
    (bind ?fruta (pregunta-numerica "Cuantas piezas de fruta tomas a la semana? " 0.0 200.0))
    (send ?dieta put-consumo+de+fruta ?fruta)
	(bind ?pastel (pregunta-numerica "Cuantas veces a la semana tomas alguna pieza de pasteleria? " 0.0 200.0))
    (send ?dieta put-pasteleria ?pastel)
	
	(send ?persona put-dieta ?dieta)
)

(defrule pide-problema
	(problemas)
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(printout t "Problemas musculo-esqueleticos: " crlf)
	(bind ?lista_problemas_musc (find-all-instances ((?p Problema+musculo-esqueletico)) TRUE))
	(printout t "0 : Deja de anadir" crlf)
	(loop-for-count (?i 1 (length$ ?lista_problemas_musc)) do
		(bind ?aux (nth$ ?i ?lista_problemas_musc))
		(printout t ?i " : " (send ?aux get-nombre) crlf)
	)
	(bind ?respuesta (pregunta-numerica "Que problema de estos tienes? " 0 (length$ ?lista_problemas_musc)))
	(while (> ?respuesta 0) do 
		(slot-insert$ ?persona problemas+fisicos 1 (nth$ ?respuesta ?lista_problemas_musc))
		(bind ?respuesta (pregunta-numerica "Que problema mas de estos tienes? " 0 (length$ ?lista_problemas_musc)))
	)
)

(deffunction pide-grupo-muscular()
	(bind ?lista_musc (find-all-instances ((?p Grupo+muscular)) TRUE))
	(bind ?res (create$))
	(printout t "0 : Deja de anadir" crlf)
	(loop-for-count (?i 1 (length$ ?lista_musc)) do
		(bind ?aux (nth$ ?i ?lista_musc))
		(printout t ?i " : " (send ?aux get-nombre) crlf)
	)
	(bind ?respuesta (pregunta-numerica "Que musculo en concreto? " 0 (length$ ?lista_musc)))
	(while (> ?respuesta 0) do 
		(bind ?res (insert$ ?res 1 (nth$ ?respuesta ?lista_musc)))
		(bind ?respuesta (pregunta-numerica "Alguno mas? " 0 (length$ ?lista_musc)))
		
	)
	
	?res
)

(defrule pide-objetivo
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?lista_objetivos (find-all-instances ((?o Objetivo)) TRUE))
	(printout t "0 : Deja de anadir" crlf)
	(loop-for-count (?i 1 (length$ ?lista_objetivos)) do
		(bind ?aux (nth$ ?i ?lista_objetivos))
		(printout t ?i " : " (send ?aux get-nombre) crlf)
	)
	(bind ?respuesta (pregunta-numerica "Que objetivo tienes? " 0 (length$ ?lista_objetivos)))
	(while (> ?respuesta 0) do
		(bind ?aux (nth$ ?respuesta ?lista_objetivos))
		(if (eq ?respuesta 7) then 
		(send ?aux put-grupo_muscular (pide-grupo-muscular))
		
		else (slot-insert$ ?persona objetivos 1 ?aux))
		
		(bind ?respuesta (pregunta-numerica "Que objetivo mas tienes? " 0 (length$ ?lista_objetivos)))
	)
	
	(slot-insert$ ?persona objetivos 1 (find-instance ((?mus Musculacion)) TRUE))
	
	(bind ?dificultad (ask-question "Cual es la dificultad deseada del entrenamiento? [Baja|Media|Alta] " Baja Media Alta))
	(assert (dificultad ?dificultad))
)

(defrule crea-programa
    
	=>
	(bind ?programa (make-instance programa of Programa))
	(bind ?lista_tiempos (create$))
    
    (printout t "Quantos minutos disponibles tienes al dia?" crlf)
	
    (bind ?respuesta (pregunta-numerica "Lunes: " 30 1440))
    (bind ?lista_tiempos (insert$ ?lista_tiempos 1 ?respuesta))
    (bind ?respuesta (pregunta-numerica "Martes: " 30 1440))
    (bind ?lista_tiempos (insert$ ?lista_tiempos 2 ?respuesta))
    (bind ?respuesta (pregunta-numerica "Miercoles: " 30 1440))
    (bind ?lista_tiempos (insert$ ?lista_tiempos 3 ?respuesta))
    (bind ?respuesta (pregunta-numerica "Jueves: " 30 1440))
    (bind ?lista_tiempos (insert$ ?lista_tiempos 4 ?respuesta))
    (bind ?respuesta (pregunta-numerica "Viernes: " 30 1440))
    (bind ?lista_tiempos (insert$ ?lista_tiempos 5 ?respuesta))
    (bind ?respuesta (pregunta-numerica "Sabado: " 30 1440))
    (bind ?lista_tiempos (insert$ ?lista_tiempos 6 ?respuesta))
    (bind ?respuesta (pregunta-numerica "Domingo: " 30 1440))
    (bind ?lista_tiempos (insert$ ?lista_tiempos 7 ?respuesta))
    
    (send ?programa put-tiempo+diario+disponible ?lista_tiempos)
)



(defrule pasa-a-generar
	(declare (salience -10))
	=>
	(focus generar-solucion)
)

(defmodule generar-solucion "Modulo de generacion de solucion"
  (import MAIN ?ALL)
  (import preguntas-persona ?ALL)
  (export ?ALL))

  
  
(deffunction do-test1(?test ?message ?persona)
	(printout t crlf ?message crlf "Introduce aqui los resultados obtenidos: " crlf)
	(bind ?ppm (pregunta-numerica "Pulsaciones por minuto " 50  250))
	(send ?test put-ppm ?ppm)
	(bind ?cansancio (ask-question "Cansacio [Mucho|Poco|Nada] " Mucho Poco Nada))
	(send ?test put-cansancio ?cansancio)
	(bind ?tir (ask-question "Tirantez Muscular [Mucho|Poco|Nada] " Mucho Poco Nada))
	(send ?test put-tirantezMuscular ?tir)
	
	(slot-insert$ ?persona tests 1 ?test)
	(if (> ?ppm 150) then
		(if (eq (str-compare ?cansancio "Mucho") 0) then 2000 else
			(if (eq (str-compare ?tir "Mucho") 0) then 5000 else 8000)
		)		
	else
		(if (eq (str-compare ?cansancio "Mucho") 0) then 8000 else
			(if (eq (str-compare ?tir "Mucho") 0) then 8000 else 10000)
		)
	)
)

(deffunction do-test2(?test ?message ?persona)
	(printout t crlf ?message crlf "Introduce aqui los resultados obtenidos: " crlf)
	(bind ?ppm (pregunta-numerica "Pulsaciones por minuto " 50  250))
	(send ?test put-ppm ?ppm)
	(bind ?cansancio (ask-question "Cansacio [Mucho|Poco|Nada] " Mucho Poco Nada))
	(send ?test put-cansancio ?cansancio)
	(bind ?tir (ask-question "Tirantez Muscular [Mucho|Poco|Nada] " Mucho Poco Nada))
	(send ?test put-tirantezMuscular ?tir)
	
	(slot-insert$ ?persona tests 1 ?test)
	(if (> ?ppm 200) then
		(if (eq (str-compare ?cansancio "Mucho") 0) then 40000 else
			(if (eq (str-compare ?tir "Mucho") 0) then 42000 else 45000)
		)		
	else
		(if (eq (str-compare ?cansancio "Mucho") 0) then 42000 else
			(if (eq (str-compare ?tir "Mucho") 0) then 42000 else 50000)
		)
	)
)

(defrule calc-fitness
	(nombre ?nombre)
    ?ret <- (preFitness ?pre)
	?dieta <-(object (is-a Dieta)(nombre "Much WOW"))
	?test1 <-(object (is-a Test)(nombre "Subir tramos escalera"))
	?test2 <-(object (is-a Test)(nombre "Carrera sostenida"))
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?fitness ?pre)
    (retract ?ret)
	(bind ?lista_actividades (send ?persona get-actividades))
	(loop-for-count (?i 1 (length$ ?lista_actividades)) do
		(bind ?aux (nth$ ?i ?lista_actividades))
		(bind ?sedent (* (send ?aux get-gradoActividad) (send ?aux get-duracion)))
		(bind ?freq (send ?aux get-frequencia))
		(if (eq ?freq Diaria) then (bind ?sedent (* ?sedent 30)) else
			(if (eq ?freq Semanal) then (bind ?sedent (* ?sedent 4)) else
				(if (eq ?freq Mensual) then (bind ?sedent (* ?sedent 1)))
			)
		)
		(bind ?fitness (+ ?fitness ?sedent))
	)
	
    (bind ?sal (- 5 (send ?dieta get-abuso+de+sal)))
    (bind ?picar (- 5 (send ?dieta get-picar+entre+horas)))
    (bind ?fruta (send ?dieta get-consumo+de+fruta))
	(bind ?pastel (- 0 (send ?dieta get-pasteleria)))
	
	(bind ?fitness (+ (* (+ ?sal ?picar ?fruta ?pastel) 50) ?fitness)) ;(sal+picar)*50+fruta*50+fitness
	
	(printout t "fitness " ?fitness crlf)
	
	(if (< ?fitness 10000) then
		(bind ?message "Por favor toma el test de subir tramos de escalera (2 minutos)")
		(bind ?fitness2 (do-test1 ?test1 ?message ?persona))
		(bind ?fitness (/ (+ ?fitness ?fitness2) 2))
		else (if (> ?fitness 50000) then 
		(bind ?message "Por favor toma el test de la carrera sostenida (5 minutos)")
		(bind ?fitness2 (do-test2 ?test2 ?message ?persona))
		(bind ?fitness (/ (+ ?fitness ?fitness2) 2))
		)
	)
	
	(printout t "fitness " ?fitness crlf)
	(assert (fitness ?fitness))
)


(deffunction calcula_puntuacion(?ejercicio ?persona)
	(bind ?res 0)
	
	(bind ?lista_problemas (send ?persona get-problemas+fisicos))
	(bind ?lista_aliviados (send ?ejercicio get-problemas+aliviados))
	(progn$ (?aliviado ?lista_aliviados)
		(progn$ (?problema ?lista_problemas)
			(if (eq ?aliviado ?problema) then (bind ?res (+ ?res 3)))
		)
	)
	
	(bind ?lista_objetivos (send ?persona get-objetivos))
	(bind ?lista_cumplidos (send ?ejercicio get-objetivos))
	(bind ?lista_grupos_cumplidos (send ?ejercicio get-grupos+musculares))
	(progn$ (?objetivo ?lista_objetivos)
		(if (eq (str-compare  (class ?objetivo) "Musculacion") 0) then 
			(bind ?lista_grupos_objetivo (send ?objetivo get-grupo_muscular))
			(progn$ (?grupo_objetivo ?lista_grupos_objetivo)
				(progn$ (?grupo_cumplido ?lista_grupos_cumplidos)
					(if (eq ?grupo_cumplido ?grupo_objetivo) then (bind ?res (+ ?res 1)))
				)
			)
		else 
			(progn$ (?cumplido ?lista_cumplidos)
				(if (eq ?cumplido ?objetivo) then (bind ?res (+ ?res 3)))
			)
		)
	)
	
	?res
)

(deftemplate ejercicio_puntuado (slot ejercicio) (slot puntuacion))
(deftemplate ejercicio_puntuado2 (slot ejercicio) (slot puntuacion))

(defrule generar-ejercicios
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?lista_problemas (send ?persona get-problemas+fisicos))
	(do-for-all-instances ((?e Ejercicio)) TRUE 
		(bind ?restricciones (send ?e get-problemas+contraindicados))
		(bind ?anadir 1)
		(loop-for-count (?i 1 (length$ ?restricciones)) do
			(bind ?aux (nth$ ?i ?restricciones))
			(if (member ?aux ?lista_problemas) then (bind ?anadir 0))
		)
		(if (or (> (send ?persona get-edad) (send ?e get-edad+maxima))(< (send ?persona get-edad) (send ?e get-edad+minima))) then (bind ?anadir 0))
		(if (eq (str-compare  (class ?e) "Estiramientos") 0) then (bind ?anadir 0))
		(if (= ?anadir 1) then 
			(assert (ejercicio_puntuado (ejercicio ?e) (puntuacion (calcula_puntuacion ?e ?persona))))
			(assert (ejercicio_puntuado2 (ejercicio ?e) (puntuacion (calcula_puntuacion ?e ?persona))))
		)
	)
	
	(assert (lista_ejercicios (create$)))
)

(defrule listar-ejercicios
	?f1 <- (lista_ejercicios $?lista_ejercicios)
	?f2 <-(ejercicio_puntuado2 (ejercicio ?e) (puntuacion ?p))
	(not (ejercicio_puntuado2 (puntuacion ?p2&:(< ?p2 ?p))))
	=>
	(bind ?lista_ejercicios (insert$ ?lista_ejercicios 1 ?e))
	(retract ?f1)
	(retract ?f2)
	(assert (lista_ejercicios ?lista_ejercicios))
)


(defrule imprimir-lista-ejercicios
	(lista_ejercicios $?lista_ejercicios)
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?lista_problemas (send ?persona get-problemas+fisicos))
	(printout t  crlf  crlf crlf"Hemos detectado que tienes los siguientes problemas: " crlf crlf)
	(progn$ (?var ?lista_problemas) (printout t (send ?var get-nombre) crlf))
	(printout t crlf crlf "Estos son los ejercicios que podrias hacer teniendo en cuenta tus problemas: " crlf crlf)
	(progn$ (?var ?lista_ejercicios) (printout t (send ?var get-nombre) "  :  " (calcula_puntuacion ?var ?persona) crlf))
)

(deffunction clamp (?min ?val ?max)
	(bind ?res ?val)
	(if (< ?val ?min) then (bind ?res ?min))
	(if (> ?val ?max) then (bind ?res ?max))
	?res
)

(deftemplate ejercicio_tiempo (slot ejercicio) (slot puntuacion) (slot tiempo))

(defrule calcular-tiempo-ejercicios
	(lista_ejercicios $?lista_ejercicios)
	(dificultad ?dificultad)
	(fitness ?fitness)
	(nombre ?nombre)
	?persona <-(object (is-a Persona)(nombre ?nombreA)(peso ?peso))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?fitness 40000)
	(bind ?min-fit 10000)
	(bind ?max-fit 50000)
	(bind ?fitness (clamp ?min-fit ?fitness ?max-fit)) 
	(bind ?calorias-deseadas (*(/ (- ?fitness ?min-fit) (- ?max-fit ?min-fit)) 1000)) ;entre 0 y 1000  
	(if (eq (str-compare ?dificultad "Alta") 0) then (bind ?calorias-deseadas (* ?calorias-deseadas 2)))
	(if (eq (str-compare ?dificultad "Baja") 0) then (bind ?calorias-deseadas (* ?calorias-deseadas 0.5)))
	(printout t "Calorias deseadas: " ?calorias-deseadas crlf)
	
	(progn$ (?ejercicio ?lista_ejercicios)
		(bind ?dur-max (send ?ejercicio get-duracion+maxima))
		(bind ?dur-min (send ?ejercicio get-duracion+minima))
		(bind ?calorias-minuto (send ?ejercicio get-calorias+quemadas))
		(bind ?calorias-minuto (* ?calorias-minuto (/ ?peso 60)))
		(bind ?tiempo (/ ?calorias-deseadas ?calorias-minuto))
		(bind ?tiempo (clamp ?dur-min ?tiempo ?dur-max))
		(assert (ejercicio_tiempo (ejercicio ?ejercicio) (tiempo ?tiempo) (puntuacion -1)))
	)
	(setgen 1)
	(assert (num-program 0))
	(assert (limit-program 1000))
)

(defrule juntar-puntuacion 
	?f1<-(ejercicio_tiempo (ejercicio ?e) (puntuacion ?p))
	(ejercicio_puntuado (ejercicio ?e2&:(eq ?e ?e2)) (puntuacion ?p1&:(not (eq ?p ?p1))))
	=>
	(modify ?f1 (puntuacion ?p1))
)

(defrule genera-lunes
	(declare (salience -1))
	?programa<-(object (is-a Programa)
		(lunes $?lunes)
		(tiempo+diario+disponible $?tiempo_disponible))
	(ejercicio_tiempo (ejercicio ?e&:(not (member ?e ?lunes))) (puntuacion ?p) (tiempo ?t&:(< ?t (nth$ 1 ?tiempo_disponible))))
	(not(ejercicio_tiempo (ejercicio ?e2&:(not (member ?e2 ?lunes))) (puntuacion ?p2&:(> ?p2 ?p)) (tiempo ?t2&:(< ?t2 (nth$ 1 ?tiempo_disponible)))))
	(not(ejercicio_tiempo (ejercicio ?e3&:(not (member ?e3 ?lunes))) (puntuacion ?p3&:(= ?p3 ?p)) (tiempo ?t3&:(< ?t3 ?t))))
	=>
	(send ?programa put-lunes (insert$ ?lunes 1 ?e))
	(send ?programa put-tiempo+diario+disponible 
		(replace$ ?tiempo_disponible 1 1
			(-(nth$ 1 ?tiempo_disponible) ?t)
		)
	)
)
(defrule genera-martes
	(declare (salience -1))
	?programa<-(object (is-a Programa)
		(lunes $?lunes) (martes $?martes)
		(tiempo+diario+disponible $?tiempo_disponible))
	(ejercicio_tiempo (ejercicio ?e&:(and (not (member ?e ?martes))(not (member ?e ?lunes)))) (puntuacion ?p) (tiempo ?t&:(< ?t (nth$ 2 ?tiempo_disponible))))
	(not(ejercicio_tiempo (ejercicio ?e2&:(and (not (member ?e2 ?martes))(not (member ?e2 ?lunes)))) (puntuacion ?p2&:(> ?p2 ?p)) (tiempo ?t2&:(< ?t2 (nth$ 2 ?tiempo_disponible)))))
	(not(ejercicio_tiempo (ejercicio ?e3&:(and (not (member ?e3 ?martes))(not (member ?e3 ?lunes)))) (puntuacion ?p3&:(= ?p3 ?p)) (tiempo ?t3&:(< ?t3 ?t))))
	=>
	(send ?programa put-martes (insert$ ?martes 1 ?e))
	(send ?programa put-tiempo+diario+disponible 
		(replace$ ?tiempo_disponible 2 2
			(-(nth$ 2 ?tiempo_disponible) ?t)
		)
	)
)
(defrule genera-miercoles
	(declare (salience -1))
	?programa<-(object (is-a Programa)
		(martes $?martes)(miercoles $?miercoles)
		(tiempo+diario+disponible $?tiempo_disponible))
	(ejercicio_tiempo (ejercicio ?e&:(and (not (member ?e ?miercoles))(not (member ?e ?martes)))) (puntuacion ?p) (tiempo ?t&:(< ?t (nth$ 3 ?tiempo_disponible))))
	(not(ejercicio_tiempo (ejercicio ?e2&:(and (not (member ?e2 ?martes))(not (member ?e2 ?miercoles)))) (puntuacion ?p2&:(> ?p2 ?p)) (tiempo ?t2&:(< ?t2 (nth$ 3 ?tiempo_disponible)))))
	(not(ejercicio_tiempo (ejercicio ?e3&:(and (not (member ?e3 ?martes))(not (member ?e3 ?miercoles)))) (puntuacion ?p3&:(= ?p3 ?p)) (tiempo ?t3&:(< ?t3 ?t))))
	=>
	(send ?programa put-miercoles (insert$ ?miercoles 1 ?e))
	(send ?programa put-tiempo+diario+disponible 
		(replace$ ?tiempo_disponible 3 3
			(-(nth$ 3 ?tiempo_disponible) ?t)
		)
	)
)
(defrule genera-jueves
	(declare (salience -1))
	?programa<-(object (is-a Programa)
		(miercoles $?miercoles)(jueves $?jueves)
		(tiempo+diario+disponible $?tiempo_disponible))
	(ejercicio_tiempo (ejercicio ?e&:(and (not (member ?e ?miercoles))(not (member ?e ?jueves)))) (puntuacion ?p) (tiempo ?t&:(< ?t (nth$ 4 ?tiempo_disponible))))
	(not(ejercicio_tiempo (ejercicio ?e2&:(and (not (member ?e2 ?miercoles))(not (member ?e2 ?jueves)))) (puntuacion ?p2&:(> ?p2 ?p)) (tiempo ?t2&:(< ?t2 (nth$ 4 ?tiempo_disponible)))))
	(not(ejercicio_tiempo (ejercicio ?e3&:(and (not (member ?e3 ?miercoles))(not (member ?e3 ?jueves)))) (puntuacion ?p3&:(= ?p3 ?p)) (tiempo ?t3&:(< ?t3 ?t))))
	=>
	(send ?programa put-jueves (insert$ ?jueves 1 ?e))
	(send ?programa put-tiempo+diario+disponible 
		(replace$ ?tiempo_disponible 4 4
			(-(nth$ 4 ?tiempo_disponible) ?t)
		)
	)
)
(defrule genera-viernes
	(declare (salience -1))
	?programa<-(object (is-a Programa)
		(jueves $?jueves)(viernes $?viernes)
		(tiempo+diario+disponible $?tiempo_disponible))
	(ejercicio_tiempo (ejercicio ?e&:(and (not (member ?e ?viernes))(not (member ?e ?jueves)))) (puntuacion ?p) (tiempo ?t&:(< ?t (nth$ 5 ?tiempo_disponible))))
	(not(ejercicio_tiempo (ejercicio ?e2&:(and (not (member ?e2 ?viernes))(not (member ?e2 ?jueves)))) (puntuacion ?p2&:(> ?p2 ?p)) (tiempo ?t2&:(< ?t2 (nth$ 5 ?tiempo_disponible)))))
	(not(ejercicio_tiempo (ejercicio ?e3&:(and (not (member ?e3 ?viernes))(not (member ?e3 ?jueves)))) (puntuacion ?p3&:(= ?p3 ?p)) (tiempo ?t3&:(< ?t3 ?t))))
	=>
	(send ?programa put-viernes (insert$ ?viernes 1 ?e))
	(send ?programa put-tiempo+diario+disponible 
		(replace$ ?tiempo_disponible 5 5
			(-(nth$ 5 ?tiempo_disponible) ?t)
		)
	)
)
(defrule genera-sabado
	(declare (salience -1))
	?programa<-(object (is-a Programa)
		(viernes $?viernes)(sabado $?sabado)
		(tiempo+diario+disponible $?tiempo_disponible))
	(ejercicio_tiempo (ejercicio ?e&:(and (not (member ?e ?viernes))(not (member ?e ?sabado)))) (puntuacion ?p) (tiempo ?t&:(< ?t (nth$ 6 ?tiempo_disponible))))
	(not(ejercicio_tiempo (ejercicio ?e2&:(and (not (member ?e2 ?viernes))(not (member ?e2 ?sabado)))) (puntuacion ?p2&:(> ?p2 ?p)) (tiempo ?t2&:(< ?t2 (nth$ 6 ?tiempo_disponible)))))
	(not(ejercicio_tiempo (ejercicio ?e3&:(and (not (member ?e3 ?viernes))(not (member ?e3 ?sabado)))) (puntuacion ?p3&:(= ?p3 ?p)) (tiempo ?t3&:(< ?t3 ?t))))
	=>
	(send ?programa put-sabado (insert$ ?sabado 1 ?e))
	(send ?programa put-tiempo+diario+disponible 
		(replace$ ?tiempo_disponible 6 6
			(-(nth$ 6 ?tiempo_disponible) ?t)
		)
	)
)
(defrule genera-domingo
	(declare (salience -1))
	?programa<-(object (is-a Programa)
		(sabado $?sabado)(domingo $?domingo)
		(tiempo+diario+disponible $?tiempo_disponible))
	(ejercicio_tiempo (ejercicio ?e&:(and (not (member ?e ?domingo))(not (member ?e ?sabado)))) (puntuacion ?p) (tiempo ?t&:(< ?t (nth$ 7 ?tiempo_disponible))))
	(not(ejercicio_tiempo (ejercicio ?e2&:(and (not (member ?e2 ?domingo))(not (member ?e2 ?sabado)))) (puntuacion ?p2&:(> ?p2 ?p)) (tiempo ?t2&:(< ?t2 (nth$ 7 ?tiempo_disponible)))))
	(not(ejercicio_tiempo (ejercicio ?e3&:(and (not (member ?e3 ?domingo))(not (member ?e3 ?sabado)))) (puntuacion ?p3&:(= ?p3 ?p)) (tiempo ?t3&:(< ?t3 ?t))))
	=>
	(send ?programa put-domingo (insert$ ?domingo 1 ?e))
	(send ?programa put-tiempo+diario+disponible 
		(replace$ ?tiempo_disponible 7 7
			(-(nth$ 7 ?tiempo_disponible) ?t)
		)
	)

)
(defrule final
	(declare (salience -10))
	?programa<-(object (is-a Programa))
	=>
	(print-program ?programa)
)

	
		

