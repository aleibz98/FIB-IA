### Elements
- **Servidor de peticions**: Servidor principal que decideix d'on s'agafa cada fitxer. Estan distribuits geogràficament.
- **Servidors**: Contenen els fitxers a distribuir
- **Fitxers**: S'han de distribuir, tenen
  * *Tassa mínima de replicació*: Nombre mínim de còpies de l'arxiu.
  * *Temps de transmissió*: Depèn del servidor on estigui ubicat
- **Usuaris**: Se'ls vol subministrar els fitxers, estan distribuits geogràficament.
- **Peticions**:
  * Usuari
  * `[1..*]` fitxers

### Problema
Es volen resoldre les peticions, s'ha de dir per cada servidor quins fitxers ha d'enviar a quin usuari. 
> la medida de la calidad de la solución ha de estar ligada al tiempo total de transmisión
de los ficheros

S'intentarà també **equilibrar la càrrega dels servidors**.

### Criteris
- Minimitzar el temps de transmissió del servidor amb més càrrega
- Minimitzar el *temps de transmissió total* i també la *variànça*. 

### Classes `java`
Generadors de dades:
- `Requests`: conjunt de peticions donats un nombre d'usuaris i un nombre de peticions de fitxers per usuari.
- `Servers`: informació sobre quins servidors tenen un fitxer i el temps de transmissió fins a un usuari, donats el *nombre de servidors* i el *nombre mínim de replicacions d'un arxiu*.

### A realitzar
1. Implementar el problema perquè es puguin fer problemes **aleatòris**.
    * Nombre d'usuaris i el màxim de fitxers que demana.
    * Nombre de servidors i mínim de replicacions per arxiu. No hi pot haver més de un 50% de replicacions.
2. Definir i implementar la representació de l'etat del problema per poder usar les classes de `AIMA` (eficient en espai i temps).
3. Definir i implementar estratègies per la solució inicial, *cal justificar les decisions*.
4. Definir i implementar funció generadora d'estats successors.
    * Definir operadors
    * Evaluar diferents alternatives de conjunts d'operadors
    * Funció generadora diferent per 
      * Hill Climbing
      * Simulated Annealing
5. Definir i implementar funcions heurístiques pels criteris de qualitat.

### Experiments
1. Determinar quin conjunt d'operadors dóna millors resultats per un *heurístic* que optimitzi el 1r criteri en un escenari amb:
    * 200 usuaris
    * 5 peticions per usuari
    * 50 servidors
    * 5 replicacions com a mínim
    * Cal usar **Hill Climbing**
2. Determinar quina *estratègia de genearció* de la solució inicial dóna millors resultats per l'heurísitc de l'apartat anterior amb el mateix escenari. A partir d'aquí fixar l'estratègia de la solució inicial per la resta d'experiments.
3. Determinar els millors paràmetres pel *Simulated Annealing* amb el mateix escenari, usant el mateix:
     *  Heurístic
     *  Operadors
     *  Generador de la solució inicial
4. Estudiar com creix el temps per valors creixents dels paràmetres:
     *  Nombre d'usuaris (a 5 peticions/usuari), incrementar de 100 en 100.
     *  Nombre de servidors (mantenint el nombre de replicacions), incrementar de 50 en 50.
5. Amb el primer escenari trobar la diferència entre el *temps total de transmissió* i el temps per trobar la solució amb 2 heurístics usant *Hill Climbing*:
    *  L'usat en els experiments previs
    *  Un que optimitza el 2n criteri de qualitat, experimentar com aplicar la penalització del 2n criteri.
6. Amb l'escenari anterior trobar la diferència entre el *temps total de transmissió* i el temps d'execució amb:
    *  Hill Climbing
    *  Simulated Annealing
7. Experimentar amb el nombre de replicacions des de 5 fins a 25 en passos de 5. Medir el temps total de transmissió i el temps per trobar la solució.
8. Comprar les dues aproximacions, comentar els pros i contres de cadascuna. Decidir quina és una millor solució.
9. Enviar un e-mail amb el temps d'execució entre el 28 de març i el 3 d'abril.
