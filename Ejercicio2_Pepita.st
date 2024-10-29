!classDefinition: #TestsPepita category: 'Ejercicio2_Pepita'!
TestCase subclass: #TestsPepita
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2_Pepita'!

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


!classDefinition: #BuenosAires category: 'Ejercicio2_Pepita'!
Object subclass: #BuenosAires
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2_Pepita'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BuenosAires class' category: 'Ejercicio2_Pepita'!
BuenosAires class
	instanceVariableNames: ''!

!BuenosAires class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:52:02'!
kilometro
	^0.! !


!classDefinition: #Cordoba category: 'Ejercicio2_Pepita'!
Object subclass: #Cordoba
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2_Pepita'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cordoba class' category: 'Ejercicio2_Pepita'!
Cordoba class
	instanceVariableNames: ''!

!Cordoba class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:57:32'!
kilometro
	^800.! !


!classDefinition: #Pepita category: 'Ejercicio2_Pepita'!
Object subclass: #Pepita
	instanceVariableNames: 'energia'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2_Pepita'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pepita class' category: 'Ejercicio2_Pepita'!
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


!classDefinition: #Rosario category: 'Ejercicio2_Pepita'!
Object subclass: #Rosario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2_Pepita'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Rosario class' category: 'Ejercicio2_Pepita'!
Rosario class
	instanceVariableNames: ''!

!Rosario class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 12:53:31'!
kilometro
	^300.! !

Pepita initialize!