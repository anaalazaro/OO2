Class {
	#name : #Agua,
	#superclass : #Topografia,
	#category : #Topografias
}

{ #category : #'as yet unclassified' }
Agua >> esIgual: aTopografia [ 
^ aTopografia esIgualAgua
]

{ #category : #'as yet unclassified' }
Agua >> esIgualACompuesta: aTopografia [ 
^false
]

{ #category : #'as yet unclassified' }
Agua >> esIgualAgua [
^true
]

{ #category : #'as yet unclassified' }
Agua >> esIgualTierra [
^false
]

{ #category : #'as yet unclassified' }
Agua >> proporcionAgua [
^1. 
]

{ #category : #'as yet unclassified' }
Agua >> proporcionDesperdicio [ 
^ self proporcionAgua * 0.15
]

{ #category : #'as yet unclassified' }
Agua >> proporcionTierra [ 
^0.
]
