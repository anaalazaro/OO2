Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #Topografias
}

{ #category : #'as yet unclassified' }
Topografia >> esIgual:aTopografia [

^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> esIgualACompuesta: aTopografia [ 
^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> esIgualAgua [ 
^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> esIgualTierra [
^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionAgua [
^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionDesperdicio [
^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionTierra [
^self subclassResponsibility 
]
