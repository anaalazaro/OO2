Class {
	#name : #Paused,
	#superclass : #State,
	#category : #'ToDoList-OO2'
}

{ #category : #accessing }
Paused >> finish:aTodoitem [
aTodoitem estado: Finished new.
aTodoitem tiempoFin:DateAndTime now.
]

{ #category : #accessing }
Paused >> start:aTodolist [
]

{ #category : #'as yet unclassified' }
Paused >> togglePause: aTodoitem [ 
aTodoitem estado:InProgress new
]

{ #category : #'as yet unclassified' }
Paused >> workedTime: aTodolist [
^ aTodolist tiempo - (DateAndTime now)
]
