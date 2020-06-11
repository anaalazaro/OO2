Class {
	#name : #DatabaseProxyAccess,
	#superclass : #DatabaseAccess,
	#instVars : [
		'data',
		'user'
	],
	#category : #'TP06-Proxy'
}

{ #category : #accessing }
DatabaseProxyAccess >> data [
	^ data
]

{ #category : #accessing }
DatabaseProxyAccess >> data: anObject [
	data := anObject
]

{ #category : #'as yet unclassified' }
DatabaseProxyAccess >> getSearchResults: queryString [
self user checkAccess ifTrue: [ ^ self data getSearchResults: queryString  ].
^false
]

{ #category : #initialization }
DatabaseProxyAccess >> initialize [ 
self data: DatabaseRealAcess new.
self user: DataBaseUser new.
]

{ #category : #'as yet unclassified' }
DatabaseProxyAccess >> insertNewRow: rowData [
self user checkAccess ifTrue: [ ^ self data insertNewRow: rowData ].
^ false
]

{ #category : #accessing }
DatabaseProxyAccess >> user [
	^ user
]

{ #category : #accessing }
DatabaseProxyAccess >> user: anObject [
	user := anObject
]
