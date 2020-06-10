Class {
	#name : #Finished,
	#superclass : #State,
	#instVars : [
		'tiempo'
	],
	#category : #'ToDoList-OO2'
}

{ #category : #'as yet unclassified' }
Finished class >> crearFin [
|a|
a:= self new.
a tiempoFin .
]

{ #category : #accessing }
Finished >> comment:aComment [ 
]

{ #category : #accessing }
Finished >> finish: aTodolist [ 

]

{ #category : #accessing }
Finished >> start:aTodolist [
]

{ #category : #accessing }
Finished >> tiempo [
	^ tiempo
]

{ #category : #accessing }
Finished >> tiempo: anObject [
	tiempo := anObject
]

{ #category : #'as yet unclassified' }
Finished >> tiempoFin [
^ self tiempo: DateAndTime now.
]

{ #category : #'as yet unclassified' }
Finished >> togglePause:aTodoitem [
self error: 'Error el objeto ToDoItem no se encuentra en paused o in-progress'
]

{ #category : #'as yet unclassified' }
Finished >> workedTime: aTodolist [
^ self tiempo - (aTodolist tiempo).
]
