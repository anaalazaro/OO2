Class {
	#name : #Connection4gAdapter,
	#superclass : #ConnectionOO2,
	#instVars : [
		'adaptee'
	],
	#category : #'DispositivosYConexiones-OO2'
}

{ #category : #initialization }
Connection4gAdapter >> initialize [ 
adaptee := Connection4G new.
]

{ #category : #accessing }
Connection4gAdapter >> pict [ 
^ adaptee symb
]

{ #category : #'as yet unclassified' }
Connection4gAdapter >> sendData:datos crc:integer [
adaptee transmit:datos crc:integer
]
