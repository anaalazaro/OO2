Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'ringer',
		'display',
		'crcCalculator',
		'connection'
	],
	#category : #'DispositivosYConexiones-OO2'
}

{ #category : #'as yet unclassified' }
Dispositivo >> conectarCon:unaConexion [
Transcript show: unaConexion pict.
Transcript cr.
Transcript show: self ringer ring

]

{ #category : #'as yet unclassified' }
Dispositivo >> configurarCrc:unCrcCalculator [
self crcCalculator: unCrcCalculator 
]

{ #category : #accessing }
Dispositivo >> connection [
	^ connection
]

{ #category : #accessing }
Dispositivo >> connection: anObject [
	connection := anObject
]

{ #category : #accessing }
Dispositivo >> crcCalculator [
	^ crcCalculator
]

{ #category : #accessing }
Dispositivo >> crcCalculator: anObject [
	crcCalculator := anObject
]

{ #category : #accessing }
Dispositivo >> display [
	^ display
]

{ #category : #accessing }
Dispositivo >> display: anObject [
	display := anObject
]

{ #category : #initialization }
Dispositivo >> initialize [
ringer:= Ringer new.
]

{ #category : #accessing }
Dispositivo >> ringer [
	^ ringer
]

{ #category : #accessing }
Dispositivo >> ringer: anObject [
	ringer := anObject
]

{ #category : #commands }
Dispositivo >> send:datos [
|crc|
crc:=self crcCalculator crcFor:datos.
self connection sendData:datos crc:crc.

]
