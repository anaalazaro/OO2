Class {
	#name : #NeoJSONExporter,
	#superclass : #Exporter,
	#category : #Biblioteca
}

{ #category : #accessing }
NeoJSONExporter >> export: socios [
	| exported |
	
	exported := OrderedCollection new. 
	socios  do: [ :socio | exported add:
	(Dictionary new  at:#nombre put:socio nombre; at: #email put: socio email;at: #legajo put: socio legajo;yourself)	
		].
	
	^NeoJSONWriter toStringPretty:exported.
]
