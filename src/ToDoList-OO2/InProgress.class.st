Class {
	#name : #InProgress,
	#superclass : #State,
	#category : #'ToDoList-OO2'
}

{ #category : #accessing }
InProgress >> finish:aTodoitem [
aTodoitem estado: Finished new.
]

{ #category : #accessing }
InProgress >> start:aTodolist [
]

{ #category : #'as yet unclassified' }
InProgress >> togglePause:aTodoitem [ 
aTodoitem estado: Paused new.
]

{ #category : #'as yet unclassified' }
InProgress >> workedTime: aTodolist [
^ aTodolist tiempo - (DateAndTime now)
]
