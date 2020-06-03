Class {
	#name : #Compuesta,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #Topografias
}

{ #category : #'as yet unclassified' }
Compuesta >> agregarParte:aTopografia [
self topografias add:aTopografia 

]

{ #category : #'as yet unclassified' }
Compuesta >> esIgual: aTopografia [
^ aTopografia esIgualACompuesta: self. 
]

{ #category : #'as yet unclassified' }
Compuesta >> esIgualACompuesta:aTopografia [
^	 (1 to: self topografias size)
		allSatisfy: [ :i | (self topografias at: i) esIgual: (aTopografia topografias at: i) ]
]

{ #category : #'as yet unclassified' }
Compuesta >> esIgualAgua [ 
^false

]

{ #category : #'as yet unclassified' }
Compuesta >> esIgualTierra [
^false

]

{ #category : #initialization }
Compuesta >> initialize [
topografias := OrderedCollection new.
]

{ #category : #accessing }
Compuesta >> proporcionAgua [
^ (self topografias sum:[:topografia| topografia proporcionAgua ])/self topografias size.


]

{ #category : #'as yet unclassified' }
Compuesta >> proporcionTierra [
^ (self topografias sum:[:topografia| topografia proporcionTierra  ])/self topografias size.
]

{ #category : #accessing }
Compuesta >> topografias [
^ topografias 

]
