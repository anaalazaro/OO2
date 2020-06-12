Class {
	#name : #Permisos,
	#superclass : #Decorator,
	#category : #'TP06-FileManager'
}

{ #category : #'menu commands' }
Permisos >> prettyPrint [
	^ component permisos  , ' ' , component prettyPrint
]
