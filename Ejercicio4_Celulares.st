!classDefinition: #TestsAlexis category: #Ejercicio4_Celulares!
TestCase subclass: #TestsAlexis
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

!TestsAlexis methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 19:48:19'!
test01_AlexisContratoVomistar
	Alexis contratarServicio.
	Assert that: Alexis servicioContratado
	isEqualTo: Vomistar. 
	! !

!TestsAlexis methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 22:39:59'!
test02_AlexisLlamaAGabyDurante2Minutos
	Alexis llamaA: Gaby Durante: 2*minute.
	Assert that: (Vomistar costoDeLaLlamada: 2*minute)
	isEqualTo: 1.2 * peso.! !


!classDefinition: #TestsFotorolax category: #Ejercicio4_Celulares!
TestCase subclass: #TestsFotorolax
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

!TestsFotorolax methodsFor: 'as yet unclassified' stamp: 'a 10/26/2024 22:37:46'!
test01_CuandoIniciaFotorolax_Tiene5PuntosDeBateria
	Fotorolax iniciarCelular.
	Assert 
		that: Fotorolax bateriaActual isEqualTo: 5. ! !

!TestsFotorolax methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 03:16:03'!
test02_CuandoRealizaUnaLlamadaFotorolax_Pierde20CentimosDeBateria
	Fotorolax iniciarCelular.
	Fotorolax realizarLlamada.
	Assert that: Fotorolax bateriaActual 
	isEqualTo: 4.8. ! !

!TestsFotorolax methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 03:23:40'!
test03_CuandoCargaBateriaElFotorolax_Gana50CentimosDePuntoDeBateriaPorCadaMinutoQueCarga
	Fotorolax iniciarCelular.
	Fotorolax realizarLlamada.
	Fotorolax realizarLlamada.
	Fotorolax realizarLlamada.
	Fotorolax realizarLlamada.
	Fotorolax realizarLlamada. 
	Fotorolax realizaCargaDe: 2 * minute.
	Assert that: Fotorolax bateriaActual rounded
	isEqualTo: 5. ! !


!classDefinition: #TestsGaby category: #Ejercicio4_Celulares!
TestCase subclass: #TestsGaby
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

!TestsGaby methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 19:56:54'!
test01_GabyContrataImpersonal
	Gaby contratarServicio. 
	Assert that: Gaby servicioContratado
	isEqualTo: Impersonal.! !

!TestsGaby methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 23:13:43'!
test02_GabyLlamaAAlexisDurante2Minutos
	Gaby llamaA: Alexis Durante: 2*minute.
	Assert that: (Impersonal costoDeLaLlamada: 2*minute)
	isEqualTo: 2.2 * peso.! !


!classDefinition: #TestsNoPhone category: #Ejercicio4_Celulares!
TestCase subclass: #TestsNoPhone
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

!TestsNoPhone methodsFor: 'as yet unclassified' stamp: 'a 10/26/2024 22:47:23'!
test01_CuandoIniciaNoPhone_Tiene100PuntosDeBateria
	NoPhone iniciarCelular.
	Assert 
		that: NoPhone bateriaActual
		isEqualTo: 100.! !

!TestsNoPhone methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 01:58:05'!
test02_CuandoRealizaUnaLlamadaElNoPhone_Pierde1PuntoDeBateriaPorCadaMinutoQueDuraLaLlamada
	NoPhone iniciarCelular.
	NoPhone realizaLlamadaDe: 5 * minute.
	Assert that: NoPhone bateriaActual 
	isEqualTo: 95.! !

!TestsNoPhone methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 01:58:42'!
test03_CuandoCargaBateriaElNoPhone_Gana1PuntoDeBateriaPorCadaMinutoQueCarga
	NoPhone iniciarCelular.
	NoPhone realizaLlamadaDe: 5 * minute.
	NoPhone realizaCargaDe: 5 * minute.
	Assert that: NoPhone bateriaActual 
	isEqualTo: 100.! !


!classDefinition: #Alexis category: #Ejercicio4_Celulares!
Object subclass: #Alexis
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Alexis class' category: #Ejercicio4_Celulares!
Alexis class
	instanceVariableNames: 'servicio'!

!Alexis class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 00:21:34'!
celular 
	^Fotorolax.! !

!Alexis class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 19:49:28'!
contratarServicio
	servicio := Vomistar.! !

!Alexis class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 23:05:03'!
llamaA: persona Durante: cantMinutos 
	self celular realizarLlamada: cantMinutos.
	^servicio costoDeLaLlamada: cantMinutos.! !

!Alexis class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 19:50:16'!
servicioContratado
	^servicio.! !


!classDefinition: #Fotorolax category: #Ejercicio4_Celulares!
Object subclass: #Fotorolax
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fotorolax class' category: #Ejercicio4_Celulares!
Fotorolax class
	instanceVariableNames: 'bateria'!

!Fotorolax class methodsFor: 'as yet unclassified' stamp: 'a 10/26/2024 22:42:59'!
bateriaActual
	^ bateria.! !

!Fotorolax class methodsFor: 'as yet unclassified' stamp: 'a 10/26/2024 22:33:08'!
iniciarCelular
	bateria := 5.! !

!Fotorolax class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 03:21:07'!
realizaCargaDe: cantMinutos 
	bateria := bateria + ((cantMinutos/minute) * 0.5).! !

!Fotorolax class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 03:15:42'!
realizarLlamada
	bateria := bateria - 0.2. ! !

!Fotorolax class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 22:17:41'!
realizarLlamada: cantMinutos 
	bateria - ((cantMinutos/minute) * 0.2).! !


!classDefinition: #Gaby category: #Ejercicio4_Celulares!
Object subclass: #Gaby
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Gaby class' category: #Ejercicio4_Celulares!
Gaby class
	instanceVariableNames: 'servicio'!

!Gaby class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 00:22:06'!
celular 
	^NoPhone.! !

!Gaby class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 19:57:31'!
contratarServicio
	servicio := Impersonal.! !

!Gaby class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 23:05:52'!
llamaA: persona Durante: cantMinutos 
	self celular realizarLlamada: cantMinutos.
	^servicio costoDeLaLlamada: cantMinutos.! !

!Gaby class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 19:58:04'!
servicioContratado
	^servicio.! !


!classDefinition: #Impersonal category: #Ejercicio4_Celulares!
Object subclass: #Impersonal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Impersonal class' category: #Ejercicio4_Celulares!
Impersonal class
	instanceVariableNames: ''!

!Impersonal class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 23:13:31'!
costoDeLaLlamada: cantMinutos 
	^((cantMinutos/minute) * 1.1) * peso ! !


!classDefinition: #NoPhone category: #Ejercicio4_Celulares!
Object subclass: #NoPhone
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NoPhone class' category: #Ejercicio4_Celulares!
NoPhone class
	instanceVariableNames: 'bateria'!

!NoPhone class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 00:08:34'!
bateriaActual
	^bateria.! !

!NoPhone class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 00:07:19'!
iniciarCelular
	bateria := 100.! !

!NoPhone class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 01:49:04'!
realizaCargaDe: cantMinutos
	bateria := bateria + (cantMinutos / minute)
	! !

!NoPhone class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 00:57:11'!
realizaLlamadaDe: minutosLlamada
	bateria := bateria - (minutosLlamada / minute)
	! !

!NoPhone class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 23:09:42'!
realizarLlamada: cantMinutos 
	bateria - (cantMinutos/minute).! !


!classDefinition: #Vomistar category: #Ejercicio4_Celulares!
Object subclass: #Vomistar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio4_Celulares'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Vomistar class' category: #Ejercicio4_Celulares!
Vomistar class
	instanceVariableNames: ''!

!Vomistar class methodsFor: 'as yet unclassified' stamp: 'a 10/27/2024 22:43:13'!
costoDeLaLlamada: cantMinutos 
	^((cantMinutos/minute) * 0.6) * peso.! !
