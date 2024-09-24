!classDefinition: #TestPepita category: #Ejercicio1!
TestCase subclass: #TestPepita
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1'!

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


!classDefinition: #Pepita category: #Ejercicio1!
Object subclass: #Pepita
	instanceVariableNames: 'energia'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio1'!

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:18:02'!
comer: cantGram
	energia := energia + ((cantGram / gram) * (4 * joule))
	! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:09:07'!
energia
	^energia ! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:10:30'!
initialize 
	energia := 45*joule! !

!Pepita methodsFor: 'as yet unclassified' stamp: 'GW 9/24/2024 13:25:55'!
volar: cantKilometros
	energia := energia - (((cantKilometros / kilometer) + 10 )* joule)! !
