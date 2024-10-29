!classDefinition: #TestsDionisia category: #Ejercicio6_PepitaAvistamientos!
TestCase subclass: #TestsDionisia
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

!TestsDionisia methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 01:49:43'!
test01_CuandoDionisaNace_Tiene45JouleDeEnergia
	Dionisia initialize.
	Assert that: Dionisia energia
	isEqualTo: 45*joule.! !

!TestsDionisia methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 09:32:06'!
test02_CuandoDionisiaVuelaConsume1JouleDeEnergiaPorCadaKilometroQueVuelaMasUnCostoFijoDe25Joules
	Dionisia initialize.
	Dionisia vuela: 2 * kilometer.
	Assert that: Dionisia energia 
	isEqualTo: 18 * joule.! !

!TestsDionisia methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 09:38:17'!
test03_CuandoDionisiaCome_Obtiene2JouleDeEnergiaPorCadaGramoQueCome
	Dionisia initialize.
	Dionisia come: 5 * gram.
	Assert that: Dionisia energia 
	isEqualTo: 55 * joule.! !

!TestsDionisia methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 09:46:22'!
test04_CuandoDionisiaComeMasDe100Gramos_UnicamenteCome100Gramos
	Dionisia initialize.
	Dionisia come: 117 * gram.
	Assert that: Dionisia energia 
	isEqualTo: 245 * joule.! !


!classDefinition: #TestsPepita category: #Ejercicio6_PepitaAvistamientos!
TestCase subclass: #TestsPepita
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 06:13:00'!
test01_CuandoPepitaNace_Tiene45JouleDeEnergia
	Pepita initialize.
	Assert that: Pepita energia
	isEqualTo: 45 * joule.! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 11:30:07'!
test02_CuandoPepitaCome_Adquiere4JoulesPorCadaGramoQueCome
	Pepita initialize.
	Pepita come: 2 * gram.
	Assert that: Pepita energia
	isEqualTo: 53 * joule. 
	! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:30:43'!
test03_CuandoPepitaVuela_Consume1JoulePorCadaKilometroQueVuelaMas10JouleFijosPorVuelo
	Pepita initialize.
	Pepita vuela: 2 * kilometer.
	Assert that: Pepita energia
	isEqualTo: 33 * joule. ! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:47:10'!
test04_CuandoPepitaNace_SeEncuentraEnBuenosAires
	Pepita initialize.
	Assert that: Pepita ubicacion
	isEqualTo: BuenosAires.! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:51:35'!
test05_BuenosAiresEstaEnElKilometro0
	Assert that: BuenosAires kilometro
	isEqualTo: 0.
	! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:53:13'!
test06_RosarioEstaEnElKilometro300
	Assert that: Rosario kilometro
	isEqualTo: 300.! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:57:13'!
test07_CordobaEstaEnElKilometro800
	Assert that: Cordoba kilometro
	isEqualTo: 800.! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 13:57:41'!
test08_PepitaVuelaHaciaRosario_PorLoQueSeCambiaSuUbicacion
	Pepita vuelaHacia: Rosario.
	Assert that: Pepita ubicacion
	isEqualTo: Rosario.! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 13:39:07'!
test09_PepitaVuelaHaciaCordoba_PorLoQueSeCambiaSuUbicacion
	Pepita initialize.
	Pepita vuelaHacia: Cordoba.
	Assert that: Pepita ubicacion
	isEqualTo: Cordoba.! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 13:39:39'!
test10_PepitaVuelaHaciaBuenosAires_PorLoQueSeCambiaSuUbicacion
	Pepita vuelaHacia: BuenosAires.
	Assert that: Pepita ubicacion
	isEqualTo: BuenosAires.! !

!TestsPepita methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 14:15:53'!
test11_PepitaTieneLaEnergiaSuficienteParaVolarHaciaRosarioDesdeBuenosAires
	Pepita initialize.
	Pepita come: 100 * gram.
	Assert that: (Pepita energiaActual) >= (Pepita energiaNecesariaParaVolarHacia: Rosario)
	isEqualTo: true.! !


!classDefinition: #TestsRoque category: #Ejercicio6_PepitaAvistamientos!
TestCase subclass: #TestsRoque
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

!TestsRoque methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:54:42'!
test01_CuandoRoqueNace_Tiene45JoulesDeEnergia
	Roque initialize.
	Assert that: Roque energia
	isEqualTo: 45*joule.! !

!TestsRoque methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:56:24'!
test02_CuandoRoqueCome_Adquiere8JoulesPorCadaGramoQueCome
	Roque initialize.
	Roque come: 2 * gram.
	Assert that: Roque energia
	isEqualTo: 61 * joule. ! !

!TestsRoque methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:57:43'!
test03_CuandoRoqueVuela_Consume1JoulePorCadaKilometroQueVuelaMas20JouleFijosPorVuelo
	Roque initialize.
	Roque vuela: 2 * kilometer.
	Assert that: Roque energia
	isEqualTo: 23 * joule. ! !


!classDefinition: #TestsSusana category: #Ejercicio6_PepitaAvistamientos!
TestCase subclass: #TestsSusana
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

!TestsSusana methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 10:55:43'!
test01_CuandoSusanaNace_Tiene45JouleDeEnergia
	Susana initialize.
	Assert that: Susana energia
	isEqualTo: 45*joule.
	! !

!TestsSusana methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:25:12'!
test02_CuandoSusanaVuela_Consume50CentimosDeJoulePorCadaKilometroQueVuelaY10JouleDeCostoFijoPorVuelo
	Susana initialize.
	Susana vuela: 2 * kilometer.
	Assert that: Susana energia 
	isEqualTo: 34*joule.! !


!classDefinition: #BuenosAires category: #Ejercicio6_PepitaAvistamientos!
Object subclass: #BuenosAires
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BuenosAires class' category: #Ejercicio6_PepitaAvistamientos!
BuenosAires class
	instanceVariableNames: ''!

!BuenosAires class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:52:02'!
kilometro
	^0.! !


!classDefinition: #Cordoba category: #Ejercicio6_PepitaAvistamientos!
Object subclass: #Cordoba
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cordoba class' category: #Ejercicio6_PepitaAvistamientos!
Cordoba class
	instanceVariableNames: ''!

!Cordoba class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:57:32'!
kilometro
	^800.! !


!classDefinition: #Dionisia category: #Ejercicio6_PepitaAvistamientos!
Object subclass: #Dionisia
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Dionisia class' category: #Ejercicio6_PepitaAvistamientos!
Dionisia class
	instanceVariableNames: 'energia'!

!Dionisia class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 09:47:44'!
come: cantGramos
	| gramosAConsumir|
	gramosAConsumir := (cantGramos min: (100*gram)). 
	energia := ((energia/joule) + ((gramosAConsumir/gram) * 2)) * joule. ! !

!Dionisia class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 01:49:56'!
energia
	^energia! !

!Dionisia class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 01:08:50'!
initialize
	energia := 45 * joule.! !

!Dionisia class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 09:32:38'!
vuela: cantKilometros 
	energia := (((energia/joule) - (cantKilometros/kilometer)) - 25) * joule.! !


!classDefinition: #Pepita category: #Ejercicio6_PepitaAvistamientos!
Object subclass: #Pepita
	instanceVariableNames: 'energia'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pepita class' category: #Ejercicio6_PepitaAvistamientos!
Pepita class
	instanceVariableNames: 'energia ubicacion'!

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 10:27:26'!
come: cantGramos
	energia := ((energia/joule) + ((cantGramos/gram) * 4)) * joule.
	! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 13:38:05'!
distanciaHacia: unLugar
	^((ubicacion kilometro) - (unLugar kilometro)) * kilometer.! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 06:16:29'!
energia
	^energia! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 14:09:06'!
energiaActual
	^energia.! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 14:14:07'!
energiaNecesariaParaVolarHacia: unaUbicacion
	^(((self ubicacion) kilometro) + (unaUbicacion kilometro) + 10) * joule.! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:45:07'!
initialize 
	energia := 45 * joule.
	ubicacion := BuenosAires! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:47:26'!
ubicacion
	^ubicacion! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:33:18'!
vuela: cantKilometros
	energia := (((energia/joule) - (cantKilometros/kilometer)) - 10) * joule.
	! !

!Pepita class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 13:58:53'!
vuelaHacia: unLugar 
	energia := energia - ((self distanciaHacia: unLugar) * joule).
	ubicacion := unLugar.
	! !


!classDefinition: #Roque category: #Ejercicio6_PepitaAvistamientos!
Object subclass: #Roque
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Roque class' category: #Ejercicio6_PepitaAvistamientos!
Roque class
	instanceVariableNames: 'energia'!

!Roque class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:55:32'!
come: cantGramos
	energia := ((energia/joule) + ((cantGramos/gram) * 8)) * joule.! !

!Roque class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:54:53'!
energia
	^energia! !

!Roque class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:53:07'!
initialize
	energia := 45*joule.! !

!Roque class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:56:45'!
vuela: cantKilometros
	energia := (((energia/joule) - (cantKilometros/kilometer)) - 20) * joule.! !


!classDefinition: #Rosario category: #Ejercicio6_PepitaAvistamientos!
Object subclass: #Rosario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Rosario class' category: #Ejercicio6_PepitaAvistamientos!
Rosario class
	instanceVariableNames: ''!

!Rosario class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:53:31'!
kilometro
	^300.! !


!classDefinition: #Susana category: #Ejercicio6_PepitaAvistamientos!
Object subclass: #Susana
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio6_PepitaAvistamientos'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Susana class' category: #Ejercicio6_PepitaAvistamientos!
Susana class
	instanceVariableNames: 'energia'!

!Susana class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 11:38:16'!
come: cantGramos
	energia := ((energia/joule) + ((cantGramos/gram) * 4)) * joule.! !

!Susana class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 10:55:55'!
energia
	^energia! !

!Susana class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 10:49:51'!
initialize
	energia := 45 * joule.! !

!Susana class methodsFor: 'as yet unclassified' stamp: 'a 10/29/2024 12:32:57'!
vuela: cantKilometros
	energia := energia - ((((cantKilometros/kilometer) / 2) + 10) * joule). ! !

Dionisia initialize!
Pepita initialize!
Roque initialize!
Susana initialize!