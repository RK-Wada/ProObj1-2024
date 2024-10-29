!classDefinition: #TestsBooleanos category: #Ejercicio5_Boole!
TestCase subclass: #TestsBooleanos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio5_Boole'!

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 00:08:37'!
test01_CuandoSeNiegaFalso_DaVerdadero
	Assert that:  Falso negado
	isEqualTo: Verdadero.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 00:10:45'!
test02_CuandoSeNiegaVerdadero_DaFalso
	Assert that:  Verdadero negado
	isEqualTo: Falso.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:23:22'!
test03_CuandoUnBooleanoFalsoRecibeCualquierOtroBooleanoEnElAnd_DevuelveFalso
	Assert that: (Falso and: Falso)
	isEqualTo: Falso.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:26:01'!
test04_CuandoUnBooleanoVerdaderoRecibeOtroBooleanoVerdaderoEnElAnd_DevuelveVerdadero
	Assert that: (Verdadero and: Verdadero)
	isEqualTo: Verdadero. ! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:30:41'!
test05_CuandoUnBooleanoFalsoRecibeOtroBooleanoFalsoEnElOr_DevuelveFalso
	Assert that: (Falso or: Falso)
	isEqualTo: Falso.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:36:24'!
test06_CuandoUnBooleanoVerdaderoRecibeCualquierOtroBooleanoEnElOr_DevuelveVerdadero.
	Assert that: (Verdadero or: Falso)
	isEqualTo: Verdadero.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 03:06:12'!
test07_CuandoUnBooleanoFalsoRecibeOtroBooleanoVerdaderoEnElIgual_DevuelveFalso.
	Assert that: (Falso igual: Verdadero)
	isEqualTo: Falso. ! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 03:42:57'!
test08_CuandoUnBooleanoFalsoRecibeOtroBooleanoFalsoEnElIgual_DevuelveVerdadero.
	Assert that: (Falso igual: Falso)
	isEqualTo: Verdadero.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:08:07'!
test09_CuandoUnBooleanoVerdaderoRecibeOtroBooleanoFalsoEnElIgual_DevuelveFalso.
	Assert that: (Verdadero igual: Falso)
	isEqualTo: Falso.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:17:04'!
test10_CuandoUnBooleanoVerdaderoRecibeOtroBooleanoVerdaderoEnElIgual_DevuelveVerdadero.
	Assert that: (Verdadero igual: Verdadero)
	isEqualTo: Verdadero.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:24:26'!
test11_CuandoUnBooleanoVerdaderoRecibeOtroBooleanoFalsoEnElMayorIgual_DevuelveFalso.
	Assert that: (Verdadero mayorIgual: Falso)
	isEqualTo: Falso.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:26:57'!
test12_CuandoUnBooleanoVerdaderoRecibeOtroBooleanoVerdaderoEnElMayorIgual_DevuelveVerdadero.
	Assert that: (Verdadero mayorIgual: Verdadero)
	isEqualTo: Verdadero.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:27:50'!
test13_CuandoUnBooleanoFalsoRecibeOtroBooleanoFalsoEnElMayorIgual_DevuelveVerdadero.
	Assert that: (Falso mayorIgual: Falso)
	isEqualTo: Verdadero.! !

!TestsBooleanos methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:30:55'!
test14_CuandoUnBooleanoFalsoRecibeOtroBooleanoVerdaderoEnElMayorIgual_DevuelveVerdadero.
	Assert that: (Falso mayorIgual: Verdadero)
	isEqualTo: Verdadero.! !


!classDefinition: #Falso category: #Ejercicio5_Boole!
Object subclass: #Falso
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio5_Boole'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Falso class' category: #Ejercicio5_Boole!
Falso class
	instanceVariableNames: ''!

!Falso class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:20:53'!
and: unBooleano
	^Falso.
	! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 03:55:26'!
igual: unBooleano 
	^ (unBooleano = Falso)
        ifTrue: [Verdadero]
        ifFalse: [Falso].
! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:29:38'!
mayorIgual: unBooleano 
	^(unBooleano = Falso)
	ifTrue: [Verdadero]
	ifFalse: [Verdadero]! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 00:09:56'!
negado
	^Verdadero.! !

!Falso class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:35:27'!
or: unBooleano 
	^unBooleano.! !


!classDefinition: #Verdadero category: #Ejercicio5_Boole!
Object subclass: #Verdadero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio5_Boole'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Verdadero class' category: #Ejercicio5_Boole!
Verdadero class
	instanceVariableNames: ''!

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:27:40'!
and: unBooleano
	^unBooleano.
	! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:11:35'!
igual: unBooleano
	^(unBooleano = Verdadero) 
	ifFalse: [Falso] 
	ifTrue: [Verdadero] 
	! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 04:26:09'!
mayorIgual: unBooleano 
	^(unBooleano = Falso) 
	ifTrue: [Falso]
	ifFalse: [Verdadero]! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 00:11:05'!
negado
	^Falso.! !

!Verdadero class methodsFor: 'as yet unclassified' stamp: 'a 10/28/2024 01:36:42'!
or: unBooleano. 
	^Verdadero.! !
