Class {
	#name : #FechaCreacion,
	#superclass : #Decorator,
	#category : #'TP06-FileManager'
}

{ #category : #'menu commands' }
FechaCreacion >> prettyPrint [
	^ component fechaCreacion  , ' ' , component prettyPrint
]
