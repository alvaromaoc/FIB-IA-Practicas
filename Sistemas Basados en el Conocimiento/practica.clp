;Definicion de clases

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot Preferencias_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
		(create-accessor read-write))
	(single-slot Titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Horas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot MuseuACA_Class3
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Personas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cuadro_Estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
;+		(inverse-slot Estilo_Cuadro)
		(create-accessor read-write))
	(multislot Preferencias_Tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
		(create-accessor read-write))
	(multislot Estilo_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
;+		(inverse-slot Pintor_Estilo)
		(create-accessor read-write))
	(multislot Pintor_Estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(inverse-slot Estilo_Pintor)
		(create-accessor read-write))
	(single-slot Dimensiones
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mas_Ninos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tiempo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Conocimiento
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Complejidad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relevancia
		(type INTEGER)
		(range 1 3)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Epoca_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot Cuadro_Epoca)
		(create-accessor read-write))
	(multislot Estilo_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot Cuadro_Estilo)
		(create-accessor read-write))
	(single-slot Ninos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cuadro_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
;+		(cardinality 0 1)
;+		(inverse-slot Pintor_Cuadro)
		(create-accessor read-write))
	(multislot Preferencias_Epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
		(create-accessor read-write))
	(single-slot Anyo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Pintor_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot Cuadro_Pintor)
		(create-accessor read-write))
	(multislot Epoca_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
;+		(inverse-slot Pintor_Epoca)
		(create-accessor read-write))
	(single-slot Visita_Preferencias
		(type INSTANCE)
;+		(allowed-classes Preferencias)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cuadro_Epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
;+		(inverse-slot Epoca_Cuadro)
		(create-accessor read-write))
	(single-slot Dias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Tematica_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot Cuadro_Tematica)
		(create-accessor read-write))
	(multislot Cuadro_Tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
;+		(inverse-slot Tematica_Cuadro)
		(create-accessor read-write))
	(single-slot Nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Preferencias_Estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(multislot Pintor_Epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(inverse-slot Epoca_Pintor)
		(create-accessor read-write))
	(single-slot Sala
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cuadro
	(is-a USER)
	(role concrete)
	(single-slot Cuadro_Epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cuadro_Estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dimensiones
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cuadro_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Complejidad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Anyo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relevancia
		(type INTEGER)
		(range 1 3)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sala
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Cuadro_Tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
		(create-accessor read-write)))

(defclass Epoca
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Epoca_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
		(create-accessor read-write))
	(multislot Epoca_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write)))

(defclass Estilo
	(is-a USER)
	(role concrete)
	(multislot Estilo_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Estilo_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
		(create-accessor read-write)))

(defclass Pintor
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Pintor_Estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(multislot Pintor_Epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
		(create-accessor read-write))
	(multislot Pintor_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write))
	(single-slot Nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Tematica
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Tematica_Cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write)))

(defclass Visita
	(is-a USER)
	(role concrete)
	(single-slot Personas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Visita_Preferencias
		(type INSTANCE)
;+		(allowed-classes Preferencias)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Conocimiento
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ninos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dias
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mas_Ninos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tiempo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Horas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Preferencias
	(is-a USER)
	(role concrete)
	(multislot Preferencias_Estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write))
	(multislot Preferencias_Pintor
		(type INSTANCE)
;+		(allowed-classes Pintor)
		(create-accessor read-write))
	(multislot Preferencias_Epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
		(create-accessor read-write))
	(multislot Preferencias_Tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
		(create-accessor read-write)))

(defclass PrioridadCuadro
    (is-a USER)
    (role concrete)
    (slot Cuadro
		(type INSTANCE)
		(create-accessor read-write))
	(slot Prioridad 
		(type INTEGER)
		(create-accessor read-write))
	(slot Duracion 
		(type INTEGER)
		(create-accessor read-write))
)

;Instancias

(definstances instancias

([MuseuACA_Class0] of  Cuadro

	(Anyo 1651)
	(Complejidad 21594)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class44])
	(Cuadro_Tematica
		[MuseuACA_Class10004]
		[MuseuACA_Class1])
	(Dimensiones "122x177")
	(Relevancia 2)
	(Sala 2)
	(Titulo "Venus del espejo"))

([MuseuACA_Class1] of  Tematica

	(Nombre "Desnudo")
	(Tematica_Cuadro
		[MuseuACA_Class0]
		[MuseuACA_Class10006]
		[MuseuACA_Class10007]
		[MuseuACA_Class30003]
		[MuseuACA_Class30018]
		[MuseuACA_Class30026]
		[MuseuACA_Class40004]
		[MuseuACA_Class40025]
		[MuseuACA_Class40034]))

([MuseuACA_Class10000] of  Pintor

	(Nacionalidad "Espanya")
	(Nombre "Salvador Dali")
	(Pintor_Cuadro
		[MuseuACA_Class40029]
		[MuseuACA_Class40033]
		[MuseuACA_Class40034]
		[MuseuACA_Class40035])
	(Pintor_Epoca [MuseuACA_Class10001])
	(Pintor_Estilo
		[MuseuACA_Class10002]
		[MuseuACA_Class20003]
		[MuseuACA_Class20004]))

([MuseuACA_Class10001] of  Epoca

	(Epoca_Cuadro
		[MuseuACA_Class30023]
		[MuseuACA_Class30000]
		[MuseuACA_Class40004]
		[MuseuACA_Class40006]
		[MuseuACA_Class40012]
		[MuseuACA_Class40015]
		[MuseuACA_Class40019]
		[MuseuACA_Class40020]
		[MuseuACA_Class40022]
		[MuseuACA_Class40025]
		[MuseuACA_Class40026]
		[MuseuACA_Class40029]
		[MuseuACA_Class40030]
		[MuseuACA_Class40033]
		[MuseuACA_Class40034]
		[MuseuACA_Class40035]
		[MuseuACA_Class40036]
		[MuseuACA_Class40054]
		[MuseuACA_Class40062])
	(Epoca_Pintor
		[MuseuACA_Class10000]
		[MuseuACA_Class30025]
		[MuseuACA_Class30034]
		[MuseuACA_Class30037]
		[MuseuACA_Class30002]
		[MuseuACA_Class40005]
		[MuseuACA_Class40008]
		[MuseuACA_Class40010]
		[MuseuACA_Class40017]
		[MuseuACA_Class40021]
		[MuseuACA_Class40028]
		[MuseuACA_Class40032]
		[MuseuACA_Class40039]
		[MuseuACA_Class40055])
	(Nombre "Siglo XX"))

([MuseuACA_Class10002] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class40029]
		[MuseuACA_Class40033]
		[MuseuACA_Class40034]
		[MuseuACA_Class40035]
		[MuseuACA_Class40054]
		[MuseuACA_Class40062])
	(Estilo_Pintor
		[MuseuACA_Class10000]
		[MuseuACA_Class40055])
	(Nombre "Surrealismo"))

([MuseuACA_Class10003] of  Cuadro

	(Anyo 1655)
	(Complejidad 42084)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class44])
	(Cuadro_Tematica [MuseuACA_Class10004])
	(Dimensiones "167x252")
	(Relevancia 3)
	(Sala 2)
	(Titulo "La fabula de Aracne"))

([MuseuACA_Class10004] of  Tematica

	(Nombre "Mitologia")
	(Tematica_Cuadro
		[MuseuACA_Class10003]
		[MuseuACA_Class0]
		[MuseuACA_Class10006]
		[MuseuACA_Class10007]
		[MuseuACA_Class40006]))

([MuseuACA_Class10005] of  Pintor

	(Nacionalidad "Italia")
	(Nombre "Sandro Botticelli")
	(Pintor_Cuadro
		[MuseuACA_Class10006]
		[MuseuACA_Class10007]
		[MuseuACA_Class40056])
	(Pintor_Estilo [MuseuACA_Class64]))

([MuseuACA_Class10006] of  Cuadro

	(Anyo 1486)
	(Complejidad 47816)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class10005])
	(Cuadro_Tematica
		[MuseuACA_Class10004]
		[MuseuACA_Class1])
	(Dimensiones "172x278")
	(Relevancia 3)
	(Sala 1)
	(Titulo "El nacimiento de Venus"))

([MuseuACA_Class10007] of  Cuadro

	(Anyo 1482)
	(Complejidad 63742)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class10005])
	(Cuadro_Tematica
		[MuseuACA_Class10004]
		[MuseuACA_Class1])
	(Dimensiones "203x314")
	(Relevancia 3)
	(Sala 1)
	(Titulo "La primavera"))

([MuseuACA_Class2] of  Cuadro

	(Anyo 1635)
	(Complejidad 112669)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class44])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "307x367")
	(Relevancia 2)
	(Sala 2)
	(Titulo "La rendicion de Breda"))

([MuseuACA_Class20000] of  Cuadro

	(Anyo 1801)
	(Complejidad 57460)
	(Cuadro_Epoca [MuseuACA_Class59])
	(Cuadro_Estilo [MuseuACA_Class20001])
	(Cuadro_Pintor [MuseuACA_Class20002])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "260x221")
	(Relevancia 3)
	(Sala 3)
	(Titulo "Napoleon cruzando los Alpes"))

([MuseuACA_Class20001] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class20000]
		[MuseuACA_Class30003]
		[MuseuACA_Class40052])
	(Estilo_Pintor
		[MuseuACA_Class20002]
		[MuseuACA_Class30004])
	(Nombre "Neoclasico"))

([MuseuACA_Class20002] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Jacques Louis David")
	(Pintor_Cuadro
		[MuseuACA_Class20000]
		[MuseuACA_Class40052])
	(Pintor_Epoca [MuseuACA_Class59])
	(Pintor_Estilo [MuseuACA_Class20001]))

([MuseuACA_Class20003] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class40012]
		[MuseuACA_Class40025])
	(Estilo_Pintor
		[MuseuACA_Class10000]
		[MuseuACA_Class40005])
	(Nombre "Cubismo"))

([MuseuACA_Class20004] of  Estilo

	(Estilo_Pintor [MuseuACA_Class10000])
	(Nombre "Dadaismo"))

([MuseuACA_Class30000] of  Cuadro

	(Anyo 1908)
	(Complejidad 32400)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class30001])
	(Cuadro_Pintor [MuseuACA_Class30002])
	(Cuadro_Tematica [MuseuACA_Class65])
	(Dimensiones "180x180")
	(Relevancia 2)
	(Sala 5)
	(Titulo "El beso"))

([MuseuACA_Class30001] of  Estilo

	(Estilo_Cuadro [MuseuACA_Class30000])
	(Estilo_Pintor [MuseuACA_Class30002])
	(Nombre "Simbolismo"))

([MuseuACA_Class30002] of  Pintor

	(Nacionalidad "Austria")
	(Nombre "Gustav Klimt")
	(Pintor_Cuadro
		[MuseuACA_Class30000]
		[MuseuACA_Class40004])
	(Pintor_Epoca
		[MuseuACA_Class10001]
		[MuseuACA_Class30007])
	(Pintor_Estilo
		[MuseuACA_Class30001]
		[MuseuACA_Class40003]))

([MuseuACA_Class30003] of  Cuadro

	(Anyo 1814)
	(Complejidad 14742)
	(Cuadro_Epoca [MuseuACA_Class59])
	(Cuadro_Estilo [MuseuACA_Class20001])
	(Cuadro_Pintor [MuseuACA_Class30004])
	(Cuadro_Tematica [MuseuACA_Class1])
	(Dimensiones "91x162")
	(Relevancia 1)
	(Sala 3)
	(Titulo "La gran odalisca"))

([MuseuACA_Class30004] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Dominique Ingres")
	(Pintor_Cuadro [MuseuACA_Class30003])
	(Pintor_Epoca [MuseuACA_Class59])
	(Pintor_Estilo [MuseuACA_Class20001]))

([MuseuACA_Class30005] of  Cuadro

	(Anyo 1818)
	(Complejidad 6956)
	(Cuadro_Epoca [MuseuACA_Class60])
	(Cuadro_Estilo [MuseuACA_Class67])
	(Cuadro_Pintor [MuseuACA_Class30006])
	(Cuadro_Tematica [MuseuACA_Class30008])
	(Dimensiones "74x94")
	(Relevancia 3)
	(Sala 3)
	(Titulo "El caminante sobre el mar de nubes"))

([MuseuACA_Class30006] of  Pintor

	(Nacionalidad "Alemania")
	(Nombre "Caspar David Friedrich")
	(Pintor_Cuadro [MuseuACA_Class30005])
	(Pintor_Epoca
		[MuseuACA_Class60]
		[MuseuACA_Class30007])
	(Pintor_Estilo [MuseuACA_Class67]))

([MuseuACA_Class30007] of  Epoca

	(Epoca_Cuadro
		[MuseuACA_Class68]
		[MuseuACA_Class30015]
		[MuseuACA_Class30018]
		[MuseuACA_Class30020]
		[MuseuACA_Class30026]
		[MuseuACA_Class30028]
		[MuseuACA_Class30029]
		[MuseuACA_Class30031]
		[MuseuACA_Class30033]
		[MuseuACA_Class30035]
		[MuseuACA_Class30036]
		[MuseuACA_Class30038]
		[MuseuACA_Class30039]
		[MuseuACA_Class30040]
		[MuseuACA_Class30043]
		[MuseuACA_Class30044]
		[MuseuACA_Class30045]
		[MuseuACA_Class40009]
		[MuseuACA_Class40024]
		[MuseuACA_Class40053]
		[MuseuACA_Class40061])
	(Epoca_Pintor
		[MuseuACA_Class30006]
		[MuseuACA_Class30017]
		[MuseuACA_Class30019]
		[MuseuACA_Class30021]
		[MuseuACA_Class30025]
		[MuseuACA_Class30027]
		[MuseuACA_Class30032]
		[MuseuACA_Class30034]
		[MuseuACA_Class30037]
		[MuseuACA_Class30042]
		[MuseuACA_Class30002]
		[MuseuACA_Class40008]
		[MuseuACA_Class40010]
		[MuseuACA_Class40017]
		[MuseuACA_Class40021]
		[MuseuACA_Class40028])
	(Nombre "Siglo XIX"))

([MuseuACA_Class30008] of  Tematica

	(Nombre "Paisaje")
	(Tematica_Cuadro
		[MuseuACA_Class30005]
		[MuseuACA_Class30013]
		[MuseuACA_Class30015]
		[MuseuACA_Class30036]
		[MuseuACA_Class30039]
		[MuseuACA_Class40029]))

([MuseuACA_Class30009] of  Cuadro

	(Anyo 1819)
	(Complejidad 352047)
	(Cuadro_Epoca [MuseuACA_Class60])
	(Cuadro_Estilo [MuseuACA_Class67])
	(Cuadro_Pintor [MuseuACA_Class30011])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "491*717")
	(Relevancia 2)
	(Sala 3)
	(Titulo "La balsa de la Medusa"))

([MuseuACA_Class30011] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Theodore Gericault")
	(Pintor_Cuadro [MuseuACA_Class30009])
	(Pintor_Epoca [MuseuACA_Class60])
	(Pintor_Estilo [MuseuACA_Class67]))

([MuseuACA_Class30012] of  Cuadro

	(Anyo 1814)
	(Complejidad 98088)
	(Cuadro_Epoca [MuseuACA_Class60])
	(Cuadro_Estilo [MuseuACA_Class67])
	(Cuadro_Pintor [MuseuACA_Class66])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "268x366")
	(Relevancia 2)
	(Sala 3)
	(Titulo "La carga de los mamelucos"))

([MuseuACA_Class30013] of  Cuadro

	(Anyo 1820)
	(Complejidad 4028)
	(Cuadro_Epoca [MuseuACA_Class60])
	(Cuadro_Estilo [MuseuACA_Class67])
	(Cuadro_Pintor [MuseuACA_Class30014])
	(Cuadro_Tematica [MuseuACA_Class30008])
	(Dimensiones "53x76")
	(Relevancia 1)
	(Sala 3)
	(Titulo "Dedham Mill, Essex"))

([MuseuACA_Class30014] of  Pintor

	(Nacionalidad "Inglaterra")
	(Nombre "John Constable")
	(Pintor_Cuadro [MuseuACA_Class30013])
	(Pintor_Epoca [MuseuACA_Class60])
	(Pintor_Estilo [MuseuACA_Class67]))

([MuseuACA_Class30015] of  Cuadro

	(Anyo 1876)
	(Complejidad 206976)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30016])
	(Cuadro_Pintor [MuseuACA_Class30017])
	(Cuadro_Tematica [MuseuACA_Class30008])
	(Dimensiones "168x1232")
	(Relevancia 1)
	(Sala 4)
	(Titulo "El Canal de Mancorbo en los Picos de Europa"))

([MuseuACA_Class30016] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class30015]
		[MuseuACA_Class30018]
		[MuseuACA_Class30020]
		[MuseuACA_Class30028]
		[MuseuACA_Class30029]
		[MuseuACA_Class40053])
	(Estilo_Pintor
		[MuseuACA_Class30017]
		[MuseuACA_Class30019]
		[MuseuACA_Class30021]
		[MuseuACA_Class30032])
	(Nombre "Realismo"))

([MuseuACA_Class30017] of  Pintor

	(Nacionalidad "Belgica")
	(Nombre "Carlos de Haes")
	(Pintor_Cuadro [MuseuACA_Class30015])
	(Pintor_Epoca [MuseuACA_Class30007])
	(Pintor_Estilo [MuseuACA_Class30016]))

([MuseuACA_Class30018] of  Cuadro

	(Anyo 1866)
	(Complejidad 27000)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30016])
	(Cuadro_Pintor [MuseuACA_Class30019])
	(Cuadro_Tematica [MuseuACA_Class1])
	(Dimensiones "135x200")
	(Relevancia 2)
	(Sala 4)
	(Titulo "El suenyo"))

([MuseuACA_Class30019] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Gustave Courbet")
	(Pintor_Cuadro
		[MuseuACA_Class30018]
		[MuseuACA_Class30028]
		[MuseuACA_Class30029])
	(Pintor_Epoca [MuseuACA_Class30007])
	(Pintor_Estilo [MuseuACA_Class30016]))

([MuseuACA_Class30020] of  Cuadro

	(Anyo 1857)
	(Complejidad 9130)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30016])
	(Cuadro_Pintor [MuseuACA_Class30021])
	(Cuadro_Tematica [MuseuACA_Class30022])
	(Dimensiones "83x110")
	(Relevancia 1)
	(Sala 4)
	(Titulo "Las espigadoras"))

([MuseuACA_Class30021] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Jean Francois Millet")
	(Pintor_Cuadro
		[MuseuACA_Class30020]
		[MuseuACA_Class40053])
	(Pintor_Epoca [MuseuACA_Class30007])
	(Pintor_Estilo [MuseuACA_Class30016]))

([MuseuACA_Class30022] of  Tematica

	(Nombre "Rural")
	(Tematica_Cuadro
		[MuseuACA_Class30020]
		[MuseuACA_Class30029]
		[MuseuACA_Class40030]
		[MuseuACA_Class40053]))

([MuseuACA_Class30023] of  Cuadro

	(Anyo 1909)
	(Complejidad 41000)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30025])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "205x200")
	(Relevancia 3)
	(Sala 5)
	(Titulo "Paseo a orillas del mar"))

([MuseuACA_Class30024] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class30023]
		[MuseuACA_Class30026]
		[MuseuACA_Class30031]
		[MuseuACA_Class30033]
		[MuseuACA_Class30035]
		[MuseuACA_Class30036]
		[MuseuACA_Class30038]
		[MuseuACA_Class30039]
		[MuseuACA_Class40061])
	(Estilo_Pintor
		[MuseuACA_Class30025]
		[MuseuACA_Class30027]
		[MuseuACA_Class30032]
		[MuseuACA_Class30034]
		[MuseuACA_Class30037])
	(Nombre "Impresionismo"))

([MuseuACA_Class30025] of  Pintor

	(Nacionalidad "Espanya")
	(Nombre "Joaquin Sorolla")
	(Pintor_Cuadro [MuseuACA_Class30023])
	(Pintor_Epoca
		[MuseuACA_Class30007]
		[MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class30024]))

([MuseuACA_Class30026] of  Cuadro

	(Anyo 1863)
	(Complejidad 11700)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30027])
	(Cuadro_Tematica [MuseuACA_Class1])
	(Dimensiones "90x130")
	(Relevancia 1)
	(Sala 3)
	(Titulo "Olympia"))

([MuseuACA_Class30027] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Edouard Manet")
	(Pintor_Cuadro [MuseuACA_Class30026])
	(Pintor_Epoca [MuseuACA_Class30007])
	(Pintor_Estilo [MuseuACA_Class30024]))

([MuseuACA_Class30028] of  Cuadro

	(Anyo 1849)
	(Complejidad 50115)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30016])
	(Cuadro_Pintor [MuseuACA_Class30019])
	(Cuadro_Tematica [MuseuACA_Class30030])
	(Dimensiones "195x257")
	(Relevancia 1)
	(Sala 3)
	(Titulo "Despues de la cena en Ornans"))

([MuseuACA_Class30029] of  Cuadro

	(Anyo 1854)
	(Complejidad 19221)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30016])
	(Cuadro_Pintor [MuseuACA_Class30019])
	(Cuadro_Tematica [MuseuACA_Class30022])
	(Dimensiones "129x149")
	(Relevancia 2)
	(Sala 3)
	(Titulo "Bonjour, Monsieur Courbet"))

([MuseuACA_Class30030] of  Tematica

	(Nombre "Escena cotidiana")
	(Tematica_Cuadro
		[MuseuACA_Class30028]
		[MuseuACA_Class30031]
		[MuseuACA_Class30033]
		[MuseuACA_Class30035]
		[MuseuACA_Class30038]
		[MuseuACA_Class40036]
		[MuseuACA_Class40044]))

([MuseuACA_Class30031] of  Cuadro

	(Anyo 1875)
	(Complejidad 14892)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30032])
	(Cuadro_Tematica [MuseuACA_Class30030])
	(Dimensiones "102x146")
	(Relevancia 1)
	(Sala 4)
	(Titulo "Los acuchilladores de parque"))

([MuseuACA_Class30032] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Gustave Caillebotte")
	(Pintor_Cuadro [MuseuACA_Class30031])
	(Pintor_Epoca [MuseuACA_Class30007])
	(Pintor_Estilo
		[MuseuACA_Class30024]
		[MuseuACA_Class30016]))

([MuseuACA_Class30033] of  Cuadro

	(Anyo 1876)
	(Complejidad 22925)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30034])
	(Cuadro_Tematica [MuseuACA_Class30030])
	(Dimensiones "131x175")
	(Relevancia 3)
	(Sala 3)
	(Titulo "Baile en el Moulin de la Galette"))

([MuseuACA_Class30034] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Pierre Auguste Renoir")
	(Pintor_Cuadro
		[MuseuACA_Class30033]
		[MuseuACA_Class30035])
	(Pintor_Epoca
		[MuseuACA_Class30007]
		[MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class30024]))

([MuseuACA_Class30035] of  Cuadro

	(Anyo 1876)
	(Complejidad 22188)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30034])
	(Cuadro_Tematica [MuseuACA_Class30030])
	(Dimensiones "129x172")
	(Relevancia 2)
	(Sala 4)
	(Titulo "El almuerzo de los remeros"))

([MuseuACA_Class30036] of  Cuadro

	(Anyo 1883)
	(Complejidad 5265)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30037])
	(Cuadro_Tematica [MuseuACA_Class30008])
	(Dimensiones "65x81")
	(Relevancia 2)
	(Sala 4)
	(Titulo "Paisaje en Port Villez"))

([MuseuACA_Class30037] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Claude Monnet")
	(Pintor_Cuadro
		[MuseuACA_Class30036]
		[MuseuACA_Class30038]
		[MuseuACA_Class30039]
		[MuseuACA_Class40061])
	(Pintor_Epoca
		[MuseuACA_Class30007]
		[MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class30024]))

([MuseuACA_Class30038] of  Cuadro

	(Anyo 1878)
	(Complejidad 4050)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30037])
	(Cuadro_Tematica [MuseuACA_Class30030])
	(Dimensiones "81x50")
	(Relevancia 1)
	(Sala 4)
	(Titulo "La calle de Montorgueil"))

([MuseuACA_Class30039] of  Cuadro

	(Anyo 1872)
	(Complejidad 3024)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30037])
	(Cuadro_Tematica [MuseuACA_Class30008])
	(Dimensiones "48x63")
	(Relevancia 2)
	(Sala 4)
	(Titulo "Impresion, sol naciente"))

([MuseuACA_Class30040] of  Cuadro

	(Anyo 1888)
	(Complejidad 4380)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30041])
	(Cuadro_Pintor [MuseuACA_Class30042])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "73x60")
	(Relevancia 2)
	(Sala 4)
	(Titulo "La Mousme"))

([MuseuACA_Class30041] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class30040]
		[MuseuACA_Class30043]
		[MuseuACA_Class30044]
		[MuseuACA_Class30045])
	(Estilo_Pintor [MuseuACA_Class30042])
	(Nombre "Posimpresionismo"))

([MuseuACA_Class30042] of  Pintor

	(Nacionalidad "Holanda")
	(Nombre "Vincent Van Gogh")
	(Pintor_Cuadro
		[MuseuACA_Class30040]
		[MuseuACA_Class30043]
		[MuseuACA_Class30044]
		[MuseuACA_Class30045])
	(Pintor_Epoca [MuseuACA_Class30007])
	(Pintor_Estilo [MuseuACA_Class30041]))

([MuseuACA_Class30043] of  Cuadro

	(Anyo 1890)
	(Complejidad 3876)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30041])
	(Cuadro_Pintor [MuseuACA_Class30042])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "68x57")
	(Relevancia 2)
	(Sala 4)
	(Titulo "El doctor Paul Gachet"))

([MuseuACA_Class30044] of  Cuadro

	(Anyo 1887)
	(Complejidad 4860)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30041])
	(Cuadro_Pintor [MuseuACA_Class30042])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "81x60")
	(Relevancia 2)
	(Sala 4)
	(Titulo "La italiana"))

([MuseuACA_Class30045] of  Cuadro

	(Anyo 1888)
	(Complejidad 6696)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30041])
	(Cuadro_Pintor [MuseuACA_Class30042])
	(Cuadro_Tematica [MuseuACA_Class30046])
	(Dimensiones "93x72")
	(Relevancia 3)
	(Sala 5)
	(Titulo "Los girasoles"))

([MuseuACA_Class30046] of  Tematica

	(Nombre "Flores")
	(Tematica_Cuadro [MuseuACA_Class30045]))

([MuseuACA_Class40003] of  Estilo

	(Estilo_Cuadro [MuseuACA_Class40004])
	(Estilo_Pintor [MuseuACA_Class30002])
	(Nombre "Modernismo"))

([MuseuACA_Class40004] of  Cuadro

	(Anyo 1901)
	(Complejidad 3528)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40003])
	(Cuadro_Pintor [MuseuACA_Class30002])
	(Cuadro_Tematica [MuseuACA_Class1])
	(Dimensiones "84x42")
	(Relevancia 2)
	(Sala 5)
	(Titulo "Judit I"))

([MuseuACA_Class40005] of  Pintor

	(Nacionalidad "España")
	(Nombre "Pablo Picasso")
	(Pintor_Cuadro
		[MuseuACA_Class40012]
		[MuseuACA_Class40025]
		[MuseuACA_Class40062])
	(Pintor_Epoca [MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class20003]))

([MuseuACA_Class40006] of  Cuadro

	(Anyo 1903)
	(Complejidad 3300)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40007])
	(Cuadro_Pintor [MuseuACA_Class40008])
	(Cuadro_Tematica [MuseuACA_Class10004])
	(Dimensiones "55x60")
	(Relevancia 1)
	(Sala 4)
	(Titulo "El caballero azul"))

([MuseuACA_Class40007] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class40006]
		[MuseuACA_Class40009]
		[MuseuACA_Class40024])
	(Estilo_Pintor
		[MuseuACA_Class40008]
		[MuseuACA_Class40010])
	(Nombre "Expresionismo"))

([MuseuACA_Class40008] of  Pintor

	(Nacionalidad "Rusia")
	(Nombre "Vassili Klandinski")
	(Pintor_Cuadro [MuseuACA_Class40006])
	(Pintor_Epoca
		[MuseuACA_Class10001]
		[MuseuACA_Class30007])
	(Pintor_Estilo [MuseuACA_Class40007]))

([MuseuACA_Class40009] of  Cuadro

	(Anyo 1893)
	(Complejidad 6643)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class40007])
	(Cuadro_Pintor [MuseuACA_Class40010])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "91x73")
	(Relevancia 3)
	(Sala 4)
	(Titulo "El grito"))

([MuseuACA_Class40010] of  Pintor

	(Nacionalidad "Noruega")
	(Nombre "Edvard Munch")
	(Pintor_Cuadro
		[MuseuACA_Class40009]
		[MuseuACA_Class40024])
	(Pintor_Epoca
		[MuseuACA_Class30007]
		[MuseuACA_Class10001])
	(Pintor_Estilo
		[MuseuACA_Class40007]
		[MuseuACA_Class40011]))

([MuseuACA_Class40011] of  Estilo

	(Estilo_Pintor [MuseuACA_Class40010])
	(Nombre "Simbolismo"))

([MuseuACA_Class40012] of  Cuadro

	(Anyo 1937)
	(Complejidad 270824)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class20003])
	(Cuadro_Pintor [MuseuACA_Class40005])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "776x349")
	(Relevancia 3)
	(Sala 6)
	(Titulo "Guernica"))

([MuseuACA_Class40013] of  Cuadro

	(Anyo 1519)
	(Complejidad 4081)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class40014])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "77x53")
	(Relevancia 3)
	(Sala 1)
	(Titulo "La Gioconda"))

([MuseuACA_Class40014] of  Pintor

	(Nacionalidad "Italia")
	(Nombre "Leonardo Da Vinci")
	(Pintor_Cuadro
		[MuseuACA_Class40013]
		[MuseuACA_Class40040]
		[MuseuACA_Class40041]
		[MuseuACA_Class40048]
		[MuseuACA_Class40049])
	(Pintor_Epoca [MuseuACA_Class50])
	(Pintor_Estilo [MuseuACA_Class64]))

([MuseuACA_Class40015] of  Cuadro

	(Anyo 1910)
	(Complejidad 60200)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40016])
	(Cuadro_Pintor [MuseuACA_Class40017])
	(Cuadro_Tematica [MuseuACA_Class40018])
	(Dimensiones "200x301")
	(Relevancia 1)
	(Sala 5)
	(Titulo "La ciudad se levanta"))

([MuseuACA_Class40016] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class40015]
		[MuseuACA_Class40019]
		[MuseuACA_Class40020]
		[MuseuACA_Class40022])
	(Estilo_Pintor
		[MuseuACA_Class40017]
		[MuseuACA_Class40021])
	(Nombre "Futurismo"))

([MuseuACA_Class40017] of  Pintor

	(Nacionalidad "Italia")
	(Nombre "Umberto Boccioni")
	(Pintor_Cuadro
		[MuseuACA_Class40015]
		[MuseuACA_Class40022])
	(Pintor_Epoca
		[MuseuACA_Class30007]
		[MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class40016]))

([MuseuACA_Class40018] of  Tematica

	(Nombre "Urbano")
	(Tematica_Cuadro
		[MuseuACA_Class40015]
		[MuseuACA_Class40019]
		[MuseuACA_Class40020]
		[MuseuACA_Class40024]))

([MuseuACA_Class40019] of  Cuadro

	(Anyo 1920)
	(Complejidad 41710)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40016])
	(Cuadro_Pintor [MuseuACA_Class40021])
	(Cuadro_Tematica [MuseuACA_Class40018])
	(Dimensiones "215x194")
	(Relevancia 1)
	(Sala 5)
	(Titulo "Puente de Brooklyn"))

([MuseuACA_Class40020] of  Cuadro

	(Anyo 1914)
	(Complejidad 41925)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40016])
	(Cuadro_Pintor [MuseuACA_Class40021])
	(Cuadro_Tematica [MuseuACA_Class40018])
	(Dimensiones "195x215")
	(Relevancia 1)
	(Sala 5)
	(Titulo "Battle of Lights, Conney Island"))

([MuseuACA_Class40021] of  Pintor

	(Nacionalidad "Italia")
	(Nombre "Joseph Stella")
	(Pintor_Cuadro
		[MuseuACA_Class40020]
		[MuseuACA_Class40019])
	(Pintor_Epoca
		[MuseuACA_Class30007]
		[MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class40016]))

([MuseuACA_Class40022] of  Cuadro

	(Anyo 1913)
	(Complejidad 6650)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40016])
	(Cuadro_Pintor [MuseuACA_Class40017])
	(Cuadro_Tematica [MuseuACA_Class40023])
	(Dimensiones "70x95")
	(Relevancia 1)
	(Sala 5)
	(Titulo "Dinamismo de un ciclista"))

([MuseuACA_Class40023] of  Tematica

	(Nombre "Abstracta")
	(Tematica_Cuadro
		[MuseuACA_Class40022]
		[MuseuACA_Class40026]))

([MuseuACA_Class40024] of  Cuadro

	(Anyo 1892)
	(Complejidad 10164)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class40007])
	(Cuadro_Pintor [MuseuACA_Class40010])
	(Cuadro_Tematica [MuseuACA_Class40018])
	(Dimensiones "84x121")
	(Relevancia 2)
	(Sala 4)
	(Titulo "Tarde en Karl Johan"))

([MuseuACA_Class40025] of  Cuadro

	(Anyo 1907)
	(Complejidad 56619)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class20003])
	(Cuadro_Pintor [MuseuACA_Class40005])
	(Cuadro_Tematica [MuseuACA_Class1])
	(Dimensiones "243x233")
	(Relevancia 3)
	(Sala 5)
	(Titulo "Las senyoritas de Avignon"))

([MuseuACA_Class40026] of  Cuadro

	(Anyo 1918)
	(Complejidad 5846)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40027])
	(Cuadro_Pintor [MuseuACA_Class40028])
	(Cuadro_Tematica [MuseuACA_Class40023])
	(Dimensiones "74x79")
	(Relevancia 1)
	(Sala 5)
	(Titulo "Blanco sobre blanco"))

([MuseuACA_Class40027] of  Estilo

	(Estilo_Cuadro [MuseuACA_Class40026])
	(Estilo_Pintor [MuseuACA_Class40028])
	(Nombre "Suprematismo"))

([MuseuACA_Class40028] of  Pintor

	(Nacionalidad "Rusia")
	(Nombre "Kazimir Malevich")
	(Pintor_Cuadro [MuseuACA_Class40026])
	(Pintor_Epoca
		[MuseuACA_Class30007]
		[MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class40027]))

([MuseuACA_Class40029] of  Cuadro

	(Anyo 1931)
	(Complejidad 792)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class10002])
	(Cuadro_Pintor [MuseuACA_Class10000])
	(Cuadro_Tematica [MuseuACA_Class30008])
	(Dimensiones "24x33")
	(Relevancia 3)
	(Sala 5)
	(Titulo "La persistencia de la memoria"))

([MuseuACA_Class40030] of  Cuadro

	(Anyo 1930)
	(Complejidad 5070)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40031])
	(Cuadro_Pintor [MuseuACA_Class40032])
	(Cuadro_Tematica [MuseuACA_Class30022])
	(Dimensiones "78x65")
	(Relevancia 1)
	(Sala 5)
	(Titulo "Gotico estadounidense"))

([MuseuACA_Class40031] of  Estilo

	(Estilo_Cuadro [MuseuACA_Class40030])
	(Estilo_Pintor [MuseuACA_Class40032])
	(Nombre "Regionalismo"))

([MuseuACA_Class40032] of  Pintor

	(Nacionalidad "Estados Unidos")
	(Nombre "Grant Wood")
	(Pintor_Cuadro [MuseuACA_Class40030])
	(Pintor_Epoca [MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class40031]))

([MuseuACA_Class40033] of  Cuadro

	(Anyo 1951)
	(Complejidad 23780)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class10002])
	(Cuadro_Pintor [MuseuACA_Class10000])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "205x116")
	(Relevancia 2)
	(Sala 6)
	(Titulo "Cristo de San Juan de la Cruz"))

([MuseuACA_Class40034] of  Cuadro

	(Anyo 1944)
	(Complejidad 2091)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class10002])
	(Cuadro_Pintor [MuseuACA_Class10000])
	(Cuadro_Tematica [MuseuACA_Class1])
	(Dimensiones "51x41")
	(Relevancia 2)
	(Sala 6)
	(Titulo "Suenyo causado por el vuelo de una abeja alrededor de una granada un segundo antes de despertar"))

([MuseuACA_Class40035] of  Cuadro

	(Anyo 1946)
	(Complejidad 10710)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class10002])
	(Cuadro_Pintor [MuseuACA_Class10000])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "90x119")
	(Relevancia 3)
	(Sala 6)
	(Titulo "La tentacion de San Antonio"))

([MuseuACA_Class40036] of  Cuadro

	(Anyo 1962)
	(Complejidad 2000)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class40037])
	(Cuadro_Pintor [MuseuACA_Class40039])
	(Cuadro_Tematica [MuseuACA_Class30030])
	(Dimensiones "50x40")
	(Relevancia 3)
	(Sala 6)
	(Titulo "Latas de sopa Campbell"))

([MuseuACA_Class40037] of  Estilo

	(Estilo_Cuadro [MuseuACA_Class40036])
	(Estilo_Pintor [MuseuACA_Class40039])
	(Nombre "Pop"))

([MuseuACA_Class40039] of  Pintor

	(Nacionalidad "Estado Unidos")
	(Nombre "Andy Warhol")
	(Pintor_Cuadro [MuseuACA_Class40036])
	(Pintor_Epoca [MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class40037]))

([MuseuACA_Class40040] of  Cuadro

	(Anyo 1475)
	(Complejidad 21266)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class40014])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "98x217")
	(Relevancia 2)
	(Sala 1)
	(Titulo "Anunciacion"))

([MuseuACA_Class40041] of  Cuadro

	(Anyo 1498)
	(Complejidad 404800)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class40014])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "880x460")
	(Relevancia 3)
	(Sala 1)
	(Titulo "La ultima cena"))

([MuseuACA_Class40042] of  Cuadro

	(Anyo 1633)
	(Complejidad 20480)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class51])
	(Cuadro_Pintor [MuseuACA_Class40043])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "160x128")
	(Relevancia 2)
	(Sala 2)
	(Titulo "La tormenta en el mar de Galilea"))

([MuseuACA_Class40043] of  Pintor

	(Nacionalidad "Holanda")
	(Nombre "Rembrandt van Rijn")
	(Pintor_Cuadro
		[MuseuACA_Class40042]
		[MuseuACA_Class40047]
		[MuseuACA_Class40051])
	(Pintor_Epoca [MuseuACA_Class45])
	(Pintor_Estilo [MuseuACA_Class51]))

([MuseuACA_Class40044] of  Cuadro

	(Anyo 1660)
	(Complejidad 1804)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class51])
	(Cuadro_Pintor [MuseuACA_Class40046])
	(Cuadro_Tematica [MuseuACA_Class30030])
	(Dimensiones "44x41")
	(Relevancia 3)
	(Sala 2)
	(Titulo "La lechera"))

([MuseuACA_Class40046] of  Pintor

	(Nacionalidad "Holanda")
	(Nombre "Johannes Vermeer")
	(Pintor_Cuadro
		[MuseuACA_Class40044]
		[MuseuACA_Class40060])
	(Pintor_Epoca [MuseuACA_Class45])
	(Pintor_Estilo [MuseuACA_Class51]))

([MuseuACA_Class40047] of  Cuadro

	(Anyo 1632)
	(Complejidad 4774)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class40043])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "62x77")
	(Relevancia 3)
	(Sala 2)
	(Titulo "El rapto de Europa"))

([MuseuACA_Class40048] of  Cuadro

	(Anyo 1503)
	(Complejidad 18816)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class40014])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "168x112")
	(Relevancia 2)
	(Sala 1)
	(Titulo "Santa Ana, con la Virgen y el Ninyo"))

([MuseuACA_Class40049] of  Cuadro

	(Anyo 1492)
	(Complejidad 850)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class40014])
	(Cuadro_Tematica [MuseuACA_Class40050])
	(Dimensiones "34x25")
	(Relevancia 3)
	(Sala 1)
	(Titulo "Hombre Vitruvio"))

([MuseuACA_Class40050] of  Tematica

	(Nombre "Dibujo")
	(Tematica_Cuadro [MuseuACA_Class40049]))

([MuseuACA_Class40051] of  Cuadro

	(Anyo 1642)
	(Complejidad 157242)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class40043])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "359x438")
	(Relevancia 3)
	(Sala 2)
	(Titulo "La ronda de noche"))

([MuseuACA_Class40052] of  Cuadro

	(Anyo 1784)
	(Complejidad 140250)
	(Cuadro_Epoca [MuseuACA_Class59])
	(Cuadro_Estilo [MuseuACA_Class20001])
	(Cuadro_Pintor [MuseuACA_Class20002])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "330x425")
	(Relevancia 2)
	(Sala 3)
	(Titulo "El juramento de los Horacios"))

([MuseuACA_Class40053] of  Cuadro

	(Anyo 1859)
	(Complejidad 3630)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30016])
	(Cuadro_Pintor [MuseuACA_Class30021])
	(Cuadro_Tematica [MuseuACA_Class30022])
	(Dimensiones "66x55")
	(Relevancia 2)
	(Sala 4)
	(Titulo "El angelus"))

([MuseuACA_Class40054] of  Cuadro

	(Anyo 1939)
	(Complejidad 29929)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class10002])
	(Cuadro_Pintor [MuseuACA_Class40055])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "173x173")
	(Relevancia 3)
	(Sala 6)
	(Titulo "Las dos Fridas"))

([MuseuACA_Class40055] of  Pintor

	(Nacionalidad "Mexico")
	(Nombre "Frida Kahlo")
	(Pintor_Cuadro [MuseuACA_Class40054])
	(Pintor_Epoca [MuseuACA_Class10001])
	(Pintor_Estilo [MuseuACA_Class10002]))

([MuseuACA_Class40056] of  Cuadro

	(Anyo 1482)
	(Complejidad 194184)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class10005])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "558x348")
	(Relevancia 2)
	(Sala 1)
	(Titulo "Pruebas de Moises"))

([MuseuACA_Class40058] of  Cuadro

	(Anyo 1506)
	(Complejidad 14400)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class64])
	(Cuadro_Pintor [MuseuACA_Class40059])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "120x120")
	(Relevancia 3)
	(Sala 1)
	(Titulo "Sagrada Familia"))

([MuseuACA_Class40059] of  Pintor

	(Nacionalidad "Italia")
	(Nombre "Miguel Angle")
	(Pintor_Cuadro [MuseuACA_Class40058])
	(Pintor_Epoca [MuseuACA_Class50])
	(Pintor_Estilo [MuseuACA_Class64]))

([MuseuACA_Class40060] of  Cuadro

	(Anyo 1667)
	(Complejidad 1840)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class40046])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "46x40")
	(Relevancia 3)
	(Sala 2)
	(Titulo "La joven de la perla"))

([MuseuACA_Class40061] of  Cuadro

	(Anyo 1875)
	(Complejidad 8100)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class30024])
	(Cuadro_Pintor [MuseuACA_Class30037])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "100x81")
	(Relevancia 3)
	(Sala 4)
	(Titulo "Mujer con sombrilla"))

([MuseuACA_Class40062] of  Cuadro

	(Anyo 1932)
	(Complejidad 12610)
	(Cuadro_Epoca [MuseuACA_Class10001])
	(Cuadro_Estilo [MuseuACA_Class10002])
	(Cuadro_Pintor [MuseuACA_Class40005])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "130x97")
	(Relevancia 3)
	(Sala 5)
	(Titulo "El suenyo"))

([MuseuACA_Class43] of  Cuadro

	(Anyo 1656)
	(Complejidad 90220)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class44])
	(Cuadro_Tematica [MuseuACA_Class47])
	(Dimensiones "318x276")
	(Relevancia 3)
	(Sala 2)
	(Titulo "Las Meninas"))

([MuseuACA_Class44] of  Pintor

	(Nacionalidad "Espanya")
	(Nombre "Diego Velazquez")
	(Pintor_Cuadro
		[MuseuACA_Class43]
		[MuseuACA_Class56]
		[MuseuACA_Class0]
		[MuseuACA_Class2]
		[MuseuACA_Class10003])
	(Pintor_Epoca [MuseuACA_Class45])
	(Pintor_Estilo [MuseuACA_Class46]))

([MuseuACA_Class45] of  Epoca

	(Epoca_Cuadro
		[MuseuACA_Class43]
		[MuseuACA_Class53]
		[MuseuACA_Class56]
		[MuseuACA_Class0]
		[MuseuACA_Class2]
		[MuseuACA_Class10003]
		[MuseuACA_Class40042]
		[MuseuACA_Class40044]
		[MuseuACA_Class40047]
		[MuseuACA_Class40051]
		[MuseuACA_Class40060])
	(Epoca_Pintor
		[MuseuACA_Class44]
		[MuseuACA_Class55]
		[MuseuACA_Class40043]
		[MuseuACA_Class40046])
	(Nombre "Barroco"))

([MuseuACA_Class46] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class43]
		[MuseuACA_Class53]
		[MuseuACA_Class56]
		[MuseuACA_Class0]
		[MuseuACA_Class2]
		[MuseuACA_Class10003]
		[MuseuACA_Class40047]
		[MuseuACA_Class40051]
		[MuseuACA_Class40060])
	(Estilo_Pintor
		[MuseuACA_Class44]
		[MuseuACA_Class55])
	(Nombre "Barroco"))

([MuseuACA_Class47] of  Tematica

	(Nombre "Retrato Historico")
	(Tematica_Cuadro [MuseuACA_Class43]))

([MuseuACA_Class48] of  Cuadro

	(Anyo 1515)
	(Complejidad 85580)
	(Cuadro_Epoca [MuseuACA_Class50])
	(Cuadro_Estilo [MuseuACA_Class51])
	(Cuadro_Pintor [MuseuACA_Class49])
	(Cuadro_Tematica [MuseuACA_Class52])
	(Dimensiones "206x386")
	(Relevancia 3)
	(Sala 1)
	(Titulo "El jardin de las delicias"))

([MuseuACA_Class49] of  Pintor

	(Nacionalidad "Paises Bajos")
	(Nombre "El Bosco")
	(Pintor_Cuadro [MuseuACA_Class48])
	(Pintor_Epoca [MuseuACA_Class50])
	(Pintor_Estilo [MuseuACA_Class51]))

([MuseuACA_Class50] of  Epoca

	(Epoca_Cuadro
		[MuseuACA_Class48]
		[MuseuACA_Class10006]
		[MuseuACA_Class10007]
		[MuseuACA_Class40013]
		[MuseuACA_Class40040]
		[MuseuACA_Class40041]
		[MuseuACA_Class40048]
		[MuseuACA_Class40049]
		[MuseuACA_Class40056]
		[MuseuACA_Class40058])
	(Epoca_Pintor
		[MuseuACA_Class49]
		[MuseuACA_Class40014]
		[MuseuACA_Class40059])
	(Nombre "Renacimiento"))

([MuseuACA_Class51] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class48]
		[MuseuACA_Class40042]
		[MuseuACA_Class40044])
	(Estilo_Pintor
		[MuseuACA_Class49]
		[MuseuACA_Class40043]
		[MuseuACA_Class40046])
	(Nombre "Pintura flamenca"))

([MuseuACA_Class52] of  Tematica

	(Nombre "Religiosa")
	(Tematica_Cuadro
		[MuseuACA_Class48]
		[MuseuACA_Class40033]
		[MuseuACA_Class40035]
		[MuseuACA_Class40040]
		[MuseuACA_Class40041]
		[MuseuACA_Class40042]
		[MuseuACA_Class40047]
		[MuseuACA_Class40048]
		[MuseuACA_Class40056]
		[MuseuACA_Class40058]))

([MuseuACA_Class53] of  Cuadro

	(Anyo 1635)
	(Complejidad 6270)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class55])
	(Cuadro_Tematica [MuseuACA_Class54])
	(Dimensiones "66x95")
	(Relevancia 1)
	(Sala 2)
	(Titulo "Dulces y frutos secos sobre una mesa"))

([MuseuACA_Class54] of  Tematica

	(Nombre "Bodegon")
	(Tematica_Cuadro [MuseuACA_Class53]))

([MuseuACA_Class55] of  Pintor

	(Nacionalidad "Espanya")
	(Nombre "Tomas Hiepes")
	(Pintor_Cuadro [MuseuACA_Class53])
	(Pintor_Epoca [MuseuACA_Class45])
	(Pintor_Estilo [MuseuACA_Class46]))

([MuseuACA_Class56] of  Cuadro

	(Anyo 1623)
	(Complejidad 2109)
	(Cuadro_Epoca [MuseuACA_Class45])
	(Cuadro_Estilo [MuseuACA_Class46])
	(Cuadro_Pintor [MuseuACA_Class44])
	(Cuadro_Tematica [MuseuACA_Class57])
	(Dimensiones "55,5x38")
	(Relevancia 2)
	(Sala 2)
	(Titulo "Retrato de hombre"))

([MuseuACA_Class57] of  Tematica

	(Nombre "Retrato")
	(Tematica_Cuadro
		[MuseuACA_Class56]
		[MuseuACA_Class30023]
		[MuseuACA_Class30040]
		[MuseuACA_Class30043]
		[MuseuACA_Class30044]
		[MuseuACA_Class40009]
		[MuseuACA_Class40013]
		[MuseuACA_Class40054]
		[MuseuACA_Class40060]
		[MuseuACA_Class40061]
		[MuseuACA_Class40062]))

([MuseuACA_Class58] of  Epoca

	(Epoca_Cuadro [MuseuACA_Class61])
	(Epoca_Pintor
		[MuseuACA_Class62]
		[MuseuACA_Class66])
	(Nombre "Rococo"))

([MuseuACA_Class59] of  Epoca

	(Epoca_Cuadro
		[MuseuACA_Class20000]
		[MuseuACA_Class30003]
		[MuseuACA_Class40052])
	(Epoca_Pintor
		[MuseuACA_Class66]
		[MuseuACA_Class20002]
		[MuseuACA_Class30004])
	(Nombre "Neoclasicismo"))

([MuseuACA_Class60] of  Epoca

	(Epoca_Cuadro
		[MuseuACA_Class71]
		[MuseuACA_Class30005]
		[MuseuACA_Class30009]
		[MuseuACA_Class30012]
		[MuseuACA_Class30013])
	(Epoca_Pintor
		[MuseuACA_Class66]
		[MuseuACA_Class70]
		[MuseuACA_Class30006]
		[MuseuACA_Class30011]
		[MuseuACA_Class30014])
	(Nombre "Romanticismo"))

([MuseuACA_Class61] of  Cuadro

	(Anyo 1767)
	(Complejidad 5184)
	(Cuadro_Epoca [MuseuACA_Class58])
	(Cuadro_Estilo [MuseuACA_Class63])
	(Cuadro_Pintor [MuseuACA_Class62])
	(Cuadro_Tematica [MuseuACA_Class65])
	(Dimensiones "81x64")
	(Relevancia 2)
	(Sala 3)
	(Titulo "El columpio"))

([MuseuACA_Class62] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Jean Honore Fragonard")
	(Pintor_Cuadro [MuseuACA_Class61])
	(Pintor_Epoca [MuseuACA_Class58])
	(Pintor_Estilo
		[MuseuACA_Class63]
		[MuseuACA_Class64]))

([MuseuACA_Class63] of  Estilo

	(Estilo_Cuadro [MuseuACA_Class61])
	(Estilo_Pintor
		[MuseuACA_Class62]
		[MuseuACA_Class66])
	(Nombre "Rococo"))

([MuseuACA_Class64] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class10006]
		[MuseuACA_Class10007]
		[MuseuACA_Class40013]
		[MuseuACA_Class40040]
		[MuseuACA_Class40041]
		[MuseuACA_Class40048]
		[MuseuACA_Class40049]
		[MuseuACA_Class40056]
		[MuseuACA_Class40058])
	(Estilo_Pintor
		[MuseuACA_Class62]
		[MuseuACA_Class10005]
		[MuseuACA_Class40014]
		[MuseuACA_Class40059])
	(Nombre "Renacentista"))

([MuseuACA_Class65] of  Tematica

	(Nombre "Amor")
	(Tematica_Cuadro
		[MuseuACA_Class61]
		[MuseuACA_Class30000]))

([MuseuACA_Class66] of  Pintor

	(Nacionalidad "Espanya")
	(Nombre "Francisco de Goya")
	(Pintor_Cuadro
		[MuseuACA_Class68]
		[MuseuACA_Class30012])
	(Pintor_Epoca
		[MuseuACA_Class59]
		[MuseuACA_Class58]
		[MuseuACA_Class60])
	(Pintor_Estilo
		[MuseuACA_Class67]
		[MuseuACA_Class63]))

([MuseuACA_Class67] of  Estilo

	(Estilo_Cuadro
		[MuseuACA_Class68]
		[MuseuACA_Class71]
		[MuseuACA_Class30005]
		[MuseuACA_Class30009]
		[MuseuACA_Class30012]
		[MuseuACA_Class30013])
	(Estilo_Pintor
		[MuseuACA_Class66]
		[MuseuACA_Class70]
		[MuseuACA_Class30006]
		[MuseuACA_Class30011]
		[MuseuACA_Class30014])
	(Nombre "Romanticismo"))

([MuseuACA_Class68] of  Cuadro

	(Anyo 1814)
	(Complejidad 92996)
	(Cuadro_Epoca [MuseuACA_Class30007])
	(Cuadro_Estilo [MuseuACA_Class67])
	(Cuadro_Pintor [MuseuACA_Class66])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "268x347")
	(Relevancia 3)
	(Sala 3)
	(Titulo "3 de Mayo en Madrid"))

([MuseuACA_Class69] of  Tematica

	(Nombre "Acontecimiento historico")
	(Tematica_Cuadro
		[MuseuACA_Class68]
		[MuseuACA_Class71]
		[MuseuACA_Class2]
		[MuseuACA_Class20000]
		[MuseuACA_Class30009]
		[MuseuACA_Class30012]
		[MuseuACA_Class40012]
		[MuseuACA_Class40051]
		[MuseuACA_Class40052]))

([MuseuACA_Class70] of  Pintor

	(Nacionalidad "Francia")
	(Nombre "Eugene Delacroix")
	(Pintor_Cuadro [MuseuACA_Class71])
	(Pintor_Epoca [MuseuACA_Class60])
	(Pintor_Estilo [MuseuACA_Class67]))

([MuseuACA_Class71] of  Cuadro

	(Anyo 1830)
	(Complejidad 84500)
	(Cuadro_Epoca [MuseuACA_Class60])
	(Cuadro_Estilo [MuseuACA_Class67])
	(Cuadro_Pintor [MuseuACA_Class70])
	(Cuadro_Tematica [MuseuACA_Class69])
	(Dimensiones "260x325")
	(Relevancia 3)
	(Sala 3)
	(Titulo "La libertad guiando al pueblo"))

)

;Exportacion de modulos

(defmodule MAIN (export ?ALL))

(defmodule getVisita
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule getPreferencias
	(import getVisita ?ALL)
	(export ?ALL)
)

(defmodule crearPrioridades
    (import getPreferencias ?ALL)
    (export ?ALL)
)

(defmodule solucionar
	(import crearPrioridades ?ALL)
	(export ?ALL)
)

;Templates

(deftemplate MAIN::Visita 
    (slot personas (type INTEGER))
    (slot conocimiento (type INTEGER))
    (slot dias (type INTEGER))
	(slot horas (type INTEGER))
    (slot tiempo (type INTEGER))
	(slot ninos (type INSTANCE))
	(slot masninos (type INSTANCE))
)

(deftemplate MAIN::Preferencias_Visita
    (multislot Preferencias_Epoca (type INSTANCE))
    (multislot Preferencias_Estilo (type INSTANCE))
    (multislot Preferencias_Pintor (type INSTANCE))
    (multislot Preferencias_Tematica (type INSTANCE))
)

(deftemplate MAIN::Lista_Todas_Prioridades
	(multislot Prioridades (type INSTANCE))
)

(deftemplate MAIN::Lista_Max_Prioridades
	(multislot Prioridades (type INSTANCE))
)

(deftemplate MAIN::Lista_Sala_Ordenada
	(multislot Prioridades (type INSTANCE))
)

;Mensajes

(defmessage-handler Cuadro print ()
	(format t "Titulo: %s" ?self:Titulo)
	(printout t crlf)
	(bind ?autor (send ?self:Cuadro_Pintor get-Nombre))
    (format t "Autor: %s" ?autor)
	(printout t crlf)
	(bind ?epoca (send ?self:Cuadro_Epoca get-Nombre))
    (format t "Epoca del cuadro: %s" ?epoca)
	(printout t crlf)
	(format t "Anyo: %d" ?self:Anyo)
	(printout t crlf)
	(printout t "Tematicas: ")
	(bind $?tematicas ?self:Cuadro_Tematica)
	(progn$ (?tematica $?tematicas)
		(bind ?nombretematica (send ?tematica get-Nombre))
		(if (eq ?tematica-index 1)
			then (format t "%s " ?nombretematica)
			else (format t ",%s " ?nombretematica)
		)
	)
	(printout t crlf)
    (format t "Dimensiones: %s" ?self:Dimensiones)
	(printout t crlf)
    (format t "Sala: %d" ?self:Sala)
	(printout t crlf)
)

(defmessage-handler PrioridadCuadro print ()
	(printout t "***********************************************" crlf)
	(printout t (send ?self:Cuadro print))
	(format t "Duracion: %d" ?self:Duracion)
	(printout t crlf)
)


;Funciones

(deffunction get-max-prioridad ($?prioridadcuadros)
	(bind ?max -1)
	(bind ?prioridadcuadro)
	(progn$ (?val $?prioridadcuadros)
		(bind ?prioridad (send ?val get-Prioridad))
		(if (> ?prioridad ?max)
			then 
				(bind ?max ?prioridad)
				(bind ?prioridadcuadro ?val)
		)
	)
	?prioridadcuadro	
)

(deffunction get-min-sala ($?prioridadcuadros)
	(bind ?min 999) ;Nunca habra una sala con numero mas grande a 999
	(bind ?prioridadcuadro)
	(progn$ (?val $?prioridadcuadros)
		(bind ?cuadro (send ?val get-Cuadro))
		(bind ?sala (send ?cuadro get-Sala))
		(if (< ?sala ?min)
			then 
				(bind ?min ?sala)
				(bind ?prioridadcuadro ?val)
		)
	)
	?prioridadcuadro
)

(deffunction pregunta-multiple (?question $?values)
	(bind ?output_line (format nil "%s (Inroduce el indice de tus preferencias separados por un espacio, en caso contrario presiona el enter):" ?question))
	(printout t ?output_line crlf)
	(progn$ (?i ?values) 
            (bind ?output_line (format nil "%d-%s" ?i-index ?i))
            (printout t ?output_line crlf)
    )
	(format t "Indices:")
	(bind ?input (readline))
    (bind ?numbers (str-explode ?input));Devuelve los diferentes valores introducidos
    (bind $?list (create$))
    (progn$ (?i ?numbers) 
        (if (and (and (integerp ?i) (and (>= ?i 0) (<= ?i (length$ ?values)))) (not (member$ ?i ?list)));Mira que se contemplen los rangos y que no se repita
            then (bind ?list (insert$ ?list (+ (length$ ?list) 1) ?i))
        ) 
    )
    ?list
)

(deffunction pregunta-multiple-respuesta-indice (?question $?values)
   (printout t ?question)
   (progn$ (?valor $?values)
	(format t "%n%d.%s" ?valor-index ?valor)
   )
   (format t "%nRespuesta: ")
   (bind ?answer (read))
	(while (not(and(>= ?answer 1)(<= ?answer (length$ $?values)))) do
		(format t "%nVuelva a introducir la respuesta: ")
		(bind ?answer (read))
	)
	?answer
)

(deffunction pregunta-multiple-respuesta-unica (?question $?allowed-values)
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

(deffunction si-o-no (?question)
   (bind ?response (pregunta-multiple-respuesta-unica ?question si no))
   (if (eq ?response si)
       then TRUE 
       else FALSE))

(deffunction pregunta-intervalo-numerico (?question ?i ?f)
	(format t "%s (Min %d, Max %d): " ?question ?i ?f)
	(bind ?answer (read))
	(while (not(and(>= ?answer ?i)(<= ?answer ?f))) do
		(format t "%s (Min %d, Max %d): " ?question ?i ?f)
		(bind ?answer (read))
	)
	?answer
)


;Reglas

(defrule MAIN::initialRule "Main"
	(declare (salience 10))
	=>
    (printout t crlf)  	
	(printout t"Bienvenido/s!" crlf)
	(printout t crlf)
	(focus getVisita)
)

;Preguntar datos de la Visita

(defrule getVisita::obtener-datos-visita "Pregunta las caracteristicas de la visita"
	(declare (salience 10))
    (not (Visita))
    =>
	(bind ?masninos FALSE)
	(bind ?conocimiento 0)
    (bind ?personas (pregunta-intervalo-numerico "Introduce el numero de personas de la visita" 1 30))
    (bind ?ninos (si-o-no "Hay ninyos (menores de 16 anyos)?(si o no): "))
	(if ?ninos
		then (bind ?masninos (si-o-no "Hay mas ninyos que adultos?(si o no): "))
	)
    (bind ?dias (pregunta-intervalo-numerico "Introduce el numero de dias de la Visita" 1 3))
    (bind ?horas (pregunta-intervalo-numerico "Introduce el numero de horas por dia de la Visita" 1 8))
	(printout t"Ahora haremos unas preguntas para determinar el nivel de conocimiento de esta visita:" crlf)
	(bind $?values (create$ "Da Vinci" "Michelangelo" "Rafael"))
	(bind ?respuesta  (pregunta-multiple-respuesta-indice "Quien pinto La Gioconda?" $?values))
	(if (eq ?respuesta 1)
		then (bind ?conocimiento 0.5)
	)
	(bind $?values (create$ "Renacentismo" "Barroco" "Impresionismo"))
	(bind ?respuesta  (pregunta-multiple-respuesta-indice "A que corriente pertenece el cuadro El nacimiento de Venus?" $?values))
	(if (eq ?respuesta 1)
		then (bind ?conocimiento 0.5)
	)
	(bind $?values (create$ "A los reyes felipe iv y mariana de austria" "A la infanta margarita y sus criadas" "A el mismo"))
	(bind ?respuesta  (pregunta-multiple-respuesta-indice "A quien esta pintando velazquez en el cuadro de las meninas?" $?values))
	(if (eq ?respuesta 1)
		then (bind ?conocimiento 0.5)
	)
	(bind $?values (create$ "Revolucion de 1789" "Revolucion de 1830" "Revolucion de 1848"))
	(bind ?respuesta  (pregunta-multiple-respuesta-indice "En que hecho historico se inspira el cuadro La libertad guiando al pueblo?" $?values))
	(if (eq ?respuesta 2)
		then (bind ?conocimiento 0.5)
	)
	(bind $?values (create$ "Simbolismo" "Realismo" "Impresionismo"))
	(bind ?respuesta  (pregunta-multiple-respuesta-indice "A que corriente pertenece el cuadro de las espigadoras?" $?values))
	(if (eq ?respuesta 2)
		then (bind ?conocimiento 0.5)
	)
	(bind $?values (create$ "Expresionismo" "Surrealismo" "Cubismo"))
	(bind ?respuesta  (pregunta-multiple-respuesta-indice "Con que corriente estuvo principalmente relacionado Picasso?" $?values))
	(if (eq ?respuesta 3)
		then (bind ?conocimiento 0.5)
	)
	(bind ?conocimiento (round ?conocimiento))
	(assert (Visita 
        (personas ?personas)
        (dias ?dias)
		(horas ?horas)
        (tiempo (* (* ?dias ?horas) 60))
        (conocimiento ?conocimiento)
		(ninos ?ninos)
		(masninos ?masninos)))
	(focus getPreferencias)
)

;Preguntar preferencias de la Visita

(defrule getPreferencias::obtener-preferencias "Obtiene las preferencias de la visita"
	(declare (salience 10))
	(not (Preferencias_Visita))
	=>
	;Estilos
	(bind $?nombre_estilos (create$)) ;Crea una lista vacia
	(bind $?objetos_estilo (find-all-instances ((?instancia Estilo)) TRUE)) ;Coge todas las instancias que sean Estilo
	(progn$ (?estilo ?objetos_estilo)  ;Rellena la lista con los nombres de los estilos
		(bind ?nombre (send ?estilo get-Nombre))
        (bind $?nombre_estilos (insert$ $?nombre_estilos ?estilo-index ?nombre)) ;Inserta el nombre del estilo en la ultima posicion vacia de la lista
    )
	(bind ?indices_estilos (pregunta-multiple "Estilos que prefiere ver" $?nombre_estilos))
	(bind $?preferencias_estilos (create$ ))
	(progn$ (?i ?indices_estilos)  ;Escoge el estilo a partir del indice que se ha preguntado
		(bind ?estilo (nth$ ?i ?objetos_estilo)) ;Estilo del indice de los diferentes inputs de la pegunta
        (bind $?preferencias_estilos (insert$ $?preferencias_estilos ?i-index ?estilo)) ;Inserta el estilo del indice insertado al hacer la pregunta
    )
	;Pintores
	(bind $?nombre_pintores (create$)) ;Crea una lista vacia
	(bind $?objetos_pintores (find-all-instances ((?instancia Pintor)) TRUE)) ;Coge todas las instancias que sean pintor
	(progn$ (?pintor $?objetos_pintores)  ;Rellena la lista con los nombres de los pintores
		(bind ?nombre (send ?pintor get-Nombre))
        (bind $?nombre_pintores (insert$ $?nombre_pintores ?pintor-index ?nombre)) ;Inserta el nombre del pintor en la ultima posicion vacia de la lista
    )
	(bind ?indices_pintores (pregunta-multiple "Pintores que prefiere ver" $?nombre_pintores))
	(bind $?preferencias_pintores (create$ ))
	(progn$ (?i ?indices_pintores)  ;Escoge el pintor a partir del indice que se ha preguntado
		(bind ?pintor (nth$ ?i $?objetos_pintores)) ;Pintor del indice de los diferentes inputs de la pegunta
        (bind $?preferencias_pintores (insert$ $?preferencias_pintores ?i-index ?pintor)) ;Inserta el pintor del indice insertado al hacer la pregunta
    )
	;Epocas
	(bind $?nombre_epocas (create$)) ;Crea una lista vacia
	(bind $?objetos_epocas (find-all-instances ((?instancia Epoca)) TRUE)) ;Coge todas las instancias que sean epoca
	(progn$ (?epoca $?objetos_epocas)  ;Rellena la lista con los nombres de los epocas
		(bind ?nombre (send ?epoca get-Nombre))
        (bind $?nombre_epocas (insert$ $?nombre_epocas ?epoca-index ?nombre)) ;Inserta el nombre del epoca en la ultima posicion vacia de la lista
    )
	(bind ?indices_epocas (pregunta-multiple "Epocas que prefiere ver" $?nombre_epocas))
	(bind $?preferencias_epocas (create$ ))
	(progn$ (?i ?indices_epocas)  ;Escoge el epoca a partir del indice que se ha preguntado
		(bind ?epoca (nth$ ?i $?objetos_epocas)) ;Epoca del indice de los diferentes inputs de la pegunta
        (bind $?preferencias_epocas (insert$ $?preferencias_epocas ?i-index ?epoca)) ;Inserta el epoca del indice insertado al hacer la pregunta
    )
	;Tematicas
	(bind $?nombre_tematicas (create$)) ;Crea una lista vacia
	(bind $?objetos_tematicas (find-all-instances ((?instancia Tematica)) TRUE)) ;Coge todas las instancias que sean tematica
	(progn$ (?tematica $?objetos_tematicas)  ;Rellena la lista con los nombres de los tematicas
		(bind ?nombre (send ?tematica get-Nombre))
        (bind $?nombre_tematicas (insert$ $?nombre_tematicas ?tematica-index ?nombre)) ;Inserta el nombre del tematica en la ultima posicion vacia de la lista
    )
	(bind ?indices_tematicas (pregunta-multiple "Tematicas que prefiere ver" $?nombre_tematicas))
	(bind $?preferencias_tematicas (create$ ))
	(progn$ (?i ?indices_tematicas)  ;Escoge el tematica a partir del indice que se ha preguntado
		(bind ?tematica (nth$ ?i $?objetos_tematicas)) ;Tematica del indice de los diferentes inputs de la pegunta
        (bind $?preferencias_tematicas (insert$ $?preferencias_tematicas ?i-index ?tematica)) ;Inserta el tematica del indice insertado al hacer la pregunta
    )
	(assert (auxestilo aux))
	(assert (auxpintor aux))
	(assert (auxepoca aux))
	(assert (auxtematica aux))
	(assert (auxcuadros aux))
	(assert (Preferencias_Visita 
		(Preferencias_Estilo $?preferencias_estilos)
		(Preferencias_Pintor $?preferencias_pintores)
		(Preferencias_Epoca $?preferencias_epocas)
		(Preferencias_Tematica $?preferencias_tematicas)))
	(focus crearPrioridades)
)

;Crea la prioridad de cada cuadro con los datos que tenemos

(defrule crearPrioridades::crear-cuadros "Por cada cuadro se crea una prioridad"
    (declare (salience 10))
	(Visita (conocimiento ?conocimiento)(personas ?personas)(ninos ?ninos)(masninos ?masninos))
	?aux <- (auxcuadros aux)
	=>
	(retract ?aux)
	(bind $?cuadros (find-all-instances ((?inst Cuadro)) TRUE))
	(progn$ (?cuadro $?cuadros)
		(bind ?prioridad 0)
		(bind ?duracion 9)
		(bind ?relevancia (send ?cuadro get-Relevancia))
		(bind ?complejidad (send ?cuadro get-Complejidad))
		(if (or (eq ?conocimiento 1) (eq ?conocimiento 0)) then (bind ?prioridad (* ?relevancia 2)))	
		(if (eq ?conocimiento 2) then (bind ?prioridad ?relevancia))
		(bind ?duracion (+ ?duracion (round (/ ?personas 10))))
		(bind ?duracion (+ ?duracion (round (/ ?conocimiento 2))))
		(bind ?duracion (+ ?duracion ?relevancia))
		(bind ?duracion (+ ?duracion (round (/ ?complejidad 20000))))
		(if ?ninos
			then (if ?masninos
				then (bind ?duracion (- ?duracion 4))
				else (bind ?duracion (- ?duracion 2))
			)
		)
		(make-instance (gensym) of PrioridadCuadro (Cuadro ?cuadro)(Prioridad ?prioridad)(Duracion ?duracion))
	)
)

(defrule crearPrioridades::crear-estilos-preferencias "Crea hechos para despues comprobar coincidencias con la PrioridadCuadro"
	(declare (salience 10))
	(Preferencias_Visita (Preferencias_Estilo $?estilos))
	?aux <- (auxestilo aux)
	=>
	(retract ?aux)
	(progn$ (?estilo $?estilos)
		(assert (estilo ?estilo))
	)
)

(defrule crearPrioridades::crear-pintores-preferencias "Crea hechos para despues comprobar coincidencias con la PrioridadCuadro"
	(declare (salience 10))
	(Preferencias_Visita (Preferencias_Pintor $?pintores))
	?aux <- (auxpintor aux)
	=>
	(retract ?aux)
	(progn$ (?pintor $?pintores)
		(assert (pintor ?pintor))
	)
)

(defrule crearPrioridades::crear-epocas-preferencias "Crea hechos para despues comprobar coincidencias con la PrioridadCuadro"
	(declare (salience 10))
	(Preferencias_Visita (Preferencias_Epoca $?epocas))
	?aux <- (auxepoca aux)
	=>
	(retract ?aux)
	(progn$ (?epoca $?epocas)
		(assert (epoca ?epoca))
	)
)

(defrule crearPrioridades::crear-tematicas-preferencias "Crea hechos para despues comprobar coincidencias con la PrioridadCuadro"
	(declare (salience 10))
	(Preferencias_Visita (Preferencias_Tematica $?tematicas))
	?aux <- (auxtematica aux)
	=>
	(retract ?aux)
	(progn$ (?tematica $?tematicas)
		(assert (tematica ?tematica))
	)
)

(defrule crearPrioridades::comprobar-preferencias-estilos "Por cada PrioridadCuadro, si el estilo del cuadro es una de las preferencias, aumenta la duracion y la prioridad de este"
	(estilo ?estilo) 
	?prioridadcuadro <- (object (is-a PrioridadCuadro) (Cuadro ?cuadro) (Prioridad ?prioridad) (Duracion ?duracion))
	(test (eq (instance-name ?estilo) (instance-name (send ?cuadro get-Cuadro_Estilo))))
	(not (cuadro_estilo ?cuadro ?estilo))
	=>
	(bind ?prioridad (+ ?prioridad 5))
	(bind ?duracion (+ ?duracion 1))
	(assert (cuadro_estilo ?cuadro ?estilo))
	(send ?prioridadcuadro put-Prioridad ?prioridad)
    (send ?prioridadcuadro put-Duracion ?duracion)
)

(defrule crearPrioridades::comprobar-preferencias-pintores "Por cada PrioridadCuadro, si el pintor del cuadro es una de las preferencias, aumenta la duracion y la prioridad de este"
	(pintor ?pintor) 
	?prioridadcuadro <- (object (is-a PrioridadCuadro) (Cuadro ?cuadro) (Prioridad ?prioridad) (Duracion ?duracion))
	(test (eq (instance-name ?pintor) (instance-name (send ?cuadro get-Cuadro_Pintor))))
	(not (cuadro_pintor ?cuadro ?pintor))
	=>
	(bind ?prioridad (+ ?prioridad 5))
	(bind ?duracion (+ ?duracion 1))
	(assert (cuadro_pintor ?cuadro ?pintor))
	(send ?prioridadcuadro put-Prioridad ?prioridad)
    (send ?prioridadcuadro put-Duracion ?duracion)
)

(defrule crearPrioridades::comprobar-preferencias-epocas "Por cada PrioridadCuadro, si el epoca del cuadro es una de las preferencias, aumenta la duracion y la prioridad de este"
	(epoca ?epoca) 
	?prioridadcuadro <- (object (is-a PrioridadCuadro) (Cuadro ?cuadro) (Prioridad ?prioridad) (Duracion ?duracion))
	(test (eq (instance-name ?epoca) (instance-name (send ?cuadro get-Cuadro_Epoca))))
	(not (cuadro_epoca ?cuadro ?epoca))
	=>
	(bind ?prioridad (+ ?prioridad 5))
	(bind ?duracion (+ ?duracion 1))
	(assert (cuadro_epoca ?cuadro ?epoca))
	(send ?prioridadcuadro put-Prioridad ?prioridad)
    (send ?prioridadcuadro put-Duracion ?duracion)
)

(defrule crearPrioridades::comprobar-preferencias-tematicas "Por cada PrioridadCuadro, si la tematica del cuadro es una de las preferencias, aumenta la duracion y la prioridad de este"
	(tematica ?tematica)
	?prioridadcuadro <- (object (is-a PrioridadCuadro) (Cuadro ?cuadro) (Prioridad ?prioridad) (Duracion ?duracion))
	(test (member ?tematica (send ?cuadro get-Cuadro_Tematica)))
	(not (cuadro_tematica ?cuadro ?tematica))
	=>
	(bind ?prioridad (+ ?prioridad 5))
	(bind ?duracion (+ ?duracion 1))
	(assert (cuadro_tematica ?cuadro ?tematica))
	(send ?prioridadcuadro put-Prioridad ?prioridad)
    (send ?prioridadcuadro put-Duracion ?duracion)
)

(defrule crearPrioridades::todo-acabado "Acaba las prioridades y empieza a solucionar"
	(declare (salience -0))
	=>
	(printout t "Generando Ruta!" crlf)
	(focus solucionar)
)

;Ordenar cuadros

(defrule solucionar::crea-lista "Crea la lista de cuadros que se van a visitar"
	(declare (salience 10))
	(not (Lista_Max_Prioridades))
	(not (Lista_Todas_Prioridades))
	(not (Lista_Sala_Ordenada))
	=>
	(bind $?instanciasPrioridad (find-all-instances ((?instancia PrioridadCuadro)) TRUE))
	(assert (Lista_Todas_Prioridades (Prioridades $?instanciasPrioridad)))
	(assert (Lista_Max_Prioridades))
	(assert (Lista_Sala_Ordenada))
)

(defrule solucionar::meter-cuadros "Mete los cuadros con mas prioridad sin pasarse del tiempo de la visita"
	(declare (salience 10))
	?listamax <- (Lista_Max_Prioridades (Prioridades $?maxPrioridades))
	?listatodas <- (Lista_Todas_Prioridades (Prioridades $?todasPrioridades))
	?visita <- (Visita (tiempo ?tiempo))
	(test (> ?tiempo 0))
	(test (> (length$ $?todasPrioridades) 0))
	=>
	(bind ?prioridad (get-max-prioridad $?todasPrioridades))
	(bind ?tiempo (- ?tiempo (send ?prioridad get-Duracion)))
	(bind ?todasPrioridades (delete-member$ $?todasPrioridades ?prioridad))
	(modify ?visita (tiempo ?tiempo))
	(modify ?listamax (Prioridades (insert$ $?maxPrioridades (+ (length$ $?maxPrioridades) 1) ?prioridad)))
	(modify ?listatodas (Prioridades ?todasPrioridades))
	(if (or (< ?tiempo 1) (eq (length$ $?todasPrioridades) 0))
		then (assert (salas aux))
	)
)

(defrule solucionar::ordenar-por-salas "Ordena los cuadros de menor a mayor sala para que no tenga que moverse mucho de sala"
	(declare (salience 10))
	?listamax <- (Lista_Max_Prioridades (Prioridades $?maxPrioridades))
	?listatodas <- (Lista_Todas_Prioridades (Prioridades $?todasPrioridades))
	?listaporsala <- (Lista_Sala_Ordenada (Prioridades $?salaPrioridades))
	(test (> (length$ $?maxPrioridades) 0))
	?aux <- (salas aux)
	=>
	(bind ?prioridad (get-min-sala $?maxPrioridades))
	(modify ?listaporsala (Prioridades (insert$ $?salaPrioridades (+ (length$ $?salaPrioridades) 1) ?prioridad)))
	(modify ?listamax (Prioridades (delete-member$ $?maxPrioridades ?prioridad)))
)

(defrule solucionar::print-cuadros "Saca por pantalla los cuadros de la visita por orden de sala"
	(declare (salience -10))
	(not (printcuadros aux))
	?listaporsala <- (Lista_Sala_Ordenada (Prioridades $?salaPrioridades))
	(Visita (dias ?dias) (horas ?horas))
	=>
	(bind ?salascuadros "")
	(bind ?salascuadros (format nil "%sRecorrido de cuadros por salas:%n" ?salascuadros))
	(bind ?sala 1)
	(bind ?salascuadros (format nil "%sSala %d:%n" ?salascuadros ?sala))
	(bind ?tiempo (* (* ?dias ?horas) 60))
	(bind ?tiempodia (* ?horas 60))
	(bind ?dia 1)
	(assert (printcuadros aux))
	(printout t "+++++++++++++++++++++++++++++++++++++++++++++++" crlf)
	(format t "Dia %d:%n" ?dia)
	(bind ?dia (+ ?dia 1))
	(progn$ (?prioridad $?salaPrioridades)
		(bind ?cuadro (send ?prioridad get-Cuadro))
		(bind ?titulo (send ?cuadro get-Titulo))
		(bind ?salacuadro (send ?cuadro get-Sala))
		(if (> ?salacuadro ?sala)
			then
				(bind ?sala ?salacuadro)
				(bind ?salascuadros (format nil "%s%nSala %d:%n" ?salascuadros ?sala))
		)
		(bind ?salascuadros (format nil "%s%s%n" ?salascuadros ?titulo))
		(printout t (send ?prioridad print))
		(bind ?tiempo (- ?tiempo (send ?prioridad get-Duracion)))
		(if (and (>= ?dias ?dia) (> (* (- ?dias (- ?dia 1)) ?tiempodia) ?tiempo))
			then
				(printout t "+++++++++++++++++++++++++++++++++++++++++++++++" crlf)
				(format t "Dia %d:%n" ?dia)
				(bind ?dia (+ ?dia 1))
		)
	)
	(printout t "" crlf)
	(printout t "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" crlf)
	(printout t ?salascuadros)
	(printout t "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^" crlf)
)
