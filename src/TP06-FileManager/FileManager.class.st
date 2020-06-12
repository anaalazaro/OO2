Class {
	#name : #FileManager,
	#superclass : #Object,
	#instVars : [
		'file'
	],
	#category : #'TP06-FileManager'
}

{ #category : #accessing }
FileManager >> file [
	^ file
]

{ #category : #accessing }
FileManager >> file: anObject [
	file := anObject
]

{ #category : #'menu commands' }
FileManager >> prettyPrint [ 
^ self file prettyPrint 
]
