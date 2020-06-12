Class {
	#name : #FechaModificacion,
	#superclass : #Decorator,
	#category : #'TP06-FileManager'
}

{ #category : #'menu commands' }
FechaModificacion >> prettyPrint [
	^ component fechaModificacion  , ' ' , component prettyPrint
]
