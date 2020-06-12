Class {
	#name : #Extension,
	#superclass : #Decorator,
	#category : #'TP06-FileManager'
}

{ #category : #'menu commands' }
Extension >> prettyPrint [
	^ component extension , ' ' , component prettyPrint
]
