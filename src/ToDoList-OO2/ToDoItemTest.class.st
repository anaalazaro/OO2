Class {
	#name : #ToDoItemTest,
	#superclass : #TestCase,
	#instVars : [
		'todoitem',
		'finished',
		'inprogress',
		'paused',
		'pending'
	],
	#category : #'ToDoList-OO2'
}

{ #category : #running }
ToDoItemTest >> setUp [
todoitem:= ToDoItem name: 'Tarea'.
finished:= Finished crearFin .
inprogress:=InProgress new . 
paused:= Paused new.
pending:= Pending new.

]

{ #category : #tests }
ToDoItemTest >> testFinish [
|a|
todoitem estado: inprogress .
a:= todoitem estado.
todoitem finish.
self deny: todoitem estado equals: a.

todoitem estado: paused .
a:=todoitem estado.

todoitem finish.
self deny: todoitem estado equals:a.
]

{ #category : #tests }
ToDoItemTest >> testStart [ 
|a|
a:= todoitem estado.
todoitem start .
self deny: todoitem estado equals: a.

]

{ #category : #tests }
ToDoItemTest >> testTogglePause [ 
|a|
todoitem start.
a:= todoitem estado.
todoitem togglePause.
self deny: todoitem estado equals: a .

a:=todoitem estado.

todoitem togglePause .
self deny: todoitem estado equals:a .

todoitem estado: finished .
self should: [ todoitem  togglePause ] raise: Error.

todoitem estado: pending .
self should: [ todoitem  togglePause ] raise: Error
]

{ #category : #tests }
ToDoItemTest >> testWorkedTime [
|a|
a:= todoitem estado.

self should: [ todoitem  workedTime  ] raise: Error.

todoitem estado: inprogress .
todoitem iniciarTiempo .
todoitem workedTime. 
	 
]
