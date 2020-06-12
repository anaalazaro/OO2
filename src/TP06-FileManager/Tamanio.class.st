Class {
	#name : #Tamanio,
	#superclass : #Decorator,
	#category : #'TP06-FileManager'
}

{ #category : #'menu commands' }
Tamanio >> prettyPrint [
	^ component tamanio  , ' ' , component prettyPrint
]
