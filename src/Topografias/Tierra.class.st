Class {
	#name : #Tierra,
	#superclass : #Topografia,
	#category : #Topografias
}

{ #category : #'as yet unclassified' }
Tierra >> esIgual:aTopografia [
^ aTopografia esIgualTierra
]

{ #category : #'as yet unclassified' }
Tierra >> esIgualACompuesta: aTopografia [ 
^false
]

{ #category : #'as yet unclassified' }
Tierra >> esIgualAgua [
^false
]

{ #category : #'as yet unclassified' }
Tierra >> esIgualTierra [
^true
]

{ #category : #'as yet unclassified' }
Tierra >> proporcionAgua [ 
^0.
]

{ #category : #'as yet unclassified' }
Tierra >> proporcionTierra [ 
^1.
]
