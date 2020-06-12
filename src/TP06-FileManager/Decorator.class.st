Class {
	#name : #Decorator,
	#superclass : #Component,
	#instVars : [
		'component'
	],
	#category : #'TP06-FileManager'
}

{ #category : #'as yet unclassified' }
Decorator class >> createComponent:aComponent [
^ self new component: aComponent ;yourself.
]

{ #category : #accessing }
Decorator >> component [
	^ component
]

{ #category : #accessing }
Decorator >> component: anObject [
	component := anObject
]

{ #category : #'menu commands' }
Decorator >> extension [ 
^ component extension 
]

{ #category : #'menu commands' }
Decorator >> fechaCreacion [ 
^ component fechaCreacion 
]

{ #category : #'menu commands' }
Decorator >> fechaModificacion [ 
^ component fechaModificacion
]

{ #category : #'menu commands' }
Decorator >> nombre [
^ component nombre
]

{ #category : #'menu commands' }
Decorator >> permisos [
^ component permisos
]

{ #category : #'menu commands' }
Decorator >> prettyPrint [ 
^self subclassResponsibility 
]

{ #category : #'menu commands' }
Decorator >> tamanio [
^ component tamanio
]
