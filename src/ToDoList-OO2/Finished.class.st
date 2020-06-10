Class {
	#name : #Finished,
	#superclass : #State,
	#category : #'ToDoList-OO2'
}

{ #category : #accessing }
Finished >> finish: aTodolist [ 

]

{ #category : #accessing }
Finished >> start:aTodolist [
]

{ #category : #'as yet unclassified' }
Finished >> togglePause:aTodoitem [
self error: 'Error el objeto ToDoItem no se encuentra en paused o in-progress'
]

{ #category : #'as yet unclassified' }
Finished >> workedTime: aTodolist [
^ self tiempo - (aTodolist tiempo).
]
