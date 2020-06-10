Class {
	#name : #State,
	#superclass : #Object,
	#category : #'ToDoList-OO2'
}

{ #category : #adding }
State >> addComment:aComment to:aTodoitem [
aTodoitem comment: aComment 
]

{ #category : #accessing }
State >> finish:aTodoitem [ 
^ self subclassResponsibility 
]

{ #category : #accessing }
State >> start: aTodoitem [
^self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
State >> togglePause:aTodoitem [
^self subclassResponsibility  
]

{ #category : #'as yet unclassified' }
State >> workedTime:aTodolist [
^ self subclassResponsibility 
]
