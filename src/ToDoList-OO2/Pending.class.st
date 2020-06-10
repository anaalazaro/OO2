Class {
	#name : #Pending,
	#superclass : #State,
	#category : #'ToDoList-OO2'
}

{ #category : #accessing }
Pending >> finish: aTodolist [ 
]

{ #category : #accessing }
Pending >> start:aTodoitem [ 
aTodoitem estado: InProgress new. 
]

{ #category : #'as yet unclassified' }
Pending >> togglePause:aTodoitem [
self error: 'Error el objeto ToDoItem no se encuentra en paused o in-progress'
]

{ #category : #'as yet unclassified' }
Pending >> workedTime: aTodoitem [ 
self error:'El ToDoItem aun no a iniciado'
]
