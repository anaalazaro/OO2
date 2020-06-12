Class {
	#name : #Nombre,
	#superclass : #Decorator,
	#category : #'TP06-FileManager'
}

{ #category : #'menu commands' }
Nombre >> prettyPrint [
	^ component nombre , ' ' , component prettyPrint
]
