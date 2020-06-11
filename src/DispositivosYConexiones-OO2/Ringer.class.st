Class {
	#name : #Ringer,
	#superclass : #Object,
	#instVars : [
		'ring'
	],
	#category : #'DispositivosYConexiones-OO2'
}

{ #category : #initialization }
Ringer >> initialize [ 
self ring: 'sonido'
]

{ #category : #accessing }
Ringer >> ring [
	^ ring
]

{ #category : #accessing }
Ringer >> ring: anObject [
	ring := anObject
]
