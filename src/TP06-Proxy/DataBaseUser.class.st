Class {
	#name : #DataBaseUser,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'contrasena'
	],
	#category : #'TP06-Proxy'
}

{ #category : #'as yet unclassified' }
DataBaseUser >> checkAccess [
^true


]

{ #category : #accessing }
DataBaseUser >> contrasena [
	^ contrasena
]

{ #category : #accessing }
DataBaseUser >> contrasena: anObject [
	contrasena := anObject
]

{ #category : #accessing }
DataBaseUser >> nombre [
	^ nombre
]

{ #category : #accessing }
DataBaseUser >> nombre: anObject [
	nombre := anObject
]
