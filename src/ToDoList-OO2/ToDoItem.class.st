Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'estado',
		'comment',
		'tiempo',
		'tiempofin'
	],
	#category : #'ToDoList-OO2'
}

{ #category : #accessing }
ToDoItem class >> name: aName [
^ self new estado: Pending new; nombre: aName ;yourself .
]

{ #category : #adding }
ToDoItem >> addComment: aComment [ 
self estado  addComment:aComment to: self.
]

{ #category : #accessing }
ToDoItem >> comment [
	^ comment
]

{ #category : #accessing }
ToDoItem >> comment: anObject [
	comment := anObject
]

{ #category : #accessing }
ToDoItem >> estado [
	^ estado
]

{ #category : #accessing }
ToDoItem >> estado: anObject [
	estado := anObject
]

{ #category : #initialization }
ToDoItem >> finish [ 
self estado finish:self.
]

{ #category : #'as yet unclassified' }
ToDoItem >> iniciarTiempo [
self tiempo: DateAndTime now.
]

{ #category : #accessing }
ToDoItem >> nombre [
	^ nombre
]

{ #category : #accessing }
ToDoItem >> nombre: anObject [
	nombre := anObject
]

{ #category : #accessing }
ToDoItem >> start [
self estado start:self
]

{ #category : #accessing }
ToDoItem >> tiempo [
	^ tiempo
]

{ #category : #accessing }
ToDoItem >> tiempo: anObject [
	tiempo := anObject
]

{ #category : #accessing }
ToDoItem >> tiempofin [
	^ tiempofin
]

{ #category : #accessing }
ToDoItem >> tiempofin: anObject [
	tiempofin := anObject
]

{ #category : #'as yet unclassified' }
ToDoItem >> togglePause [
self estado togglePause:self 
]

{ #category : #'as yet unclassified' }
ToDoItem >> workedTime [
^ self estado workedTime:self 
]
