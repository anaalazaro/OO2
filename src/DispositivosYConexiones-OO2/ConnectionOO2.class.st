Class {
	#name : #ConnectionOO2,
	#superclass : #Object,
	#instVars : [
		'pict'
	],
	#category : #'DispositivosYConexiones-OO2'
}

{ #category : #accessing }
ConnectionOO2 >> pict [
	^ pict
]

{ #category : #accessing }
ConnectionOO2 >> pict: anObject [
	pict := anObject
]

{ #category : #'as yet unclassified' }
ConnectionOO2 >> sendData: datos crc: integer [ 
^self subclassResponsibility 
]
