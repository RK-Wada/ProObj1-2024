!classDefinition: #TestPepita category: #Ejercicio2!
TestCase subclass: #TestPepita
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2'!

!TestPepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:08:08'!
test01_PepitaCuandoNaceDebeTener45DeEnergia
|Golondrina|

    Golondrina := Pepita new.

    Assert that: Golondrina energia isEqualTo: 45 * joule! !

!TestPepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:16:49'!
test02_CuandoPepitaComeAdquiere4DeEnergiaPorCadaGramo
	|Golondrina| 
	
	Golondrina := Pepita new.
	Golondrina comer: 1 * gram.
	
	Assert that: Golondrina energia isEqualTo: 49 * joule ! !

!TestPepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:25:17'!
test03_CuandoPepitaVuelaConsume1JoulePorKilometroMas10CostoFijo

	|Golondrina| 
	
	Golondrina:= Pepita new.
	Golondrina volar: 1 * kilometer. 
	
	Assert that: Golondrina energia isEqualTo: 34 * joule! !

!TestPepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 18:47:29'!
test04_CuandoPepitaNaceApareceEnBuenosAires

	|Golondrina| 
	Golondrina := Pepita new.
	
	Assert that: Golondrina ubicacion isEqualTo: BuenosAires! !


!classDefinition: #BuenosAires category: #Ejercicio2!
Object subclass: #BuenosAires
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2'!

!BuenosAires methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 18:43:37'!
kilometro
	^0! !


!classDefinition: #Cordoba category: #Ejercicio2!
Object subclass: #Cordoba
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2'!

!Cordoba methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 18:51:46'!
kilometro
	^800! !


!classDefinition: #Pepita category: #Ejercicio2!
Object subclass: #Pepita
	instanceVariableNames: 'energia ubicacion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2'!

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:18:02'!
comer: cantGram
	energia := energia + ((cantGram / gram) * (4 * joule))
	! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:09:07'!
energia
	^energia ! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 18:44:29'!
initialize 
	energia := 45*joule.
	ubicacion := BuenosAires
! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/25/2024 08:10:50'!
puedeVolarA: lugar 
	energia >= ((10 + (lugar kilometro) amount) * joule).! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 18:17:13'!
ubicacion
	^ubicacion  ! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:25:55'!
volar: cantKilometros
	energia := energia - (((cantKilometros / kilometer) + 10 )* joule)! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/25/2024 08:10:24'!
volarA: destino
	self volar: ubicacion kilometro - destino kilometro abs.
	ubicacion:= destino ! !


!classDefinition: #Rosario category: #Ejercicio2!
Object subclass: #Rosario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio2'!

!Rosario methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 18:51:22'!
kilometro
	^300! !
