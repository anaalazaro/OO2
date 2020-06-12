Class {
	#name : #Component,
	#superclass : #Object,
	#category : #'TP06-FileManager'
}

{ #category : #'menu commands' }
Component >> extension [ 
^self subclassResponsibility 
]

{ #category : #'menu commands' }
Component >> fechaCreacion [ 
^self subclassResponsibility 
]

{ #category : #'menu commands' }
Component >> fechaModificacion [ 
^self subclassResponsibility 
]

{ #category : #'menu commands' }
Component >> nombre [
^self subclassResponsibility 
]

{ #category : #'menu commands' }
Component >> permisos [
^self subclassResponsibility 
]

{ #category : #'menu commands' }
Component >> prettyPrint [ 
^self subclassResponsibility 
]

{ #category : #'menu commands' }
Component >> tamanio [
^self subclassResponsibility 
]
