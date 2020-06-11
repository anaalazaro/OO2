Class {
	#name : #Connection4G,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #'DispositivosYConexiones-OO2'
}

{ #category : #accessing }
Connection4G >> symb [
   "devuelve la representacion en string para visualizar esta conexion"
^ '4G'
]

{ #category : #'as yet unclassified' }
Connection4G >> transmit:datos crc:integer [

]
