Class {
	#name : #FileManagerTest,
	#superclass : #TestCase,
	#instVars : [
		'fileOO2',
		'fileManager',
		'decoratorNombre'
	],
	#category : #'TP06-FileManager'
}

{ #category : #running }
FileManagerTest >> setUp [
	fileManager:=FileManager new.
	fileOO2:= FileOO2 nombre: 'abc' extension:'st'  tamanio:'5kb'  fechaModificacion:DateAndTime now  permisos: 'rwx'.
	decoratorNombre := Nombre createComponent: (Extension createComponent:fileOO2 ).
	fileManager file:decoratorNombre .
	

]

{ #category : #tests }
FileManagerTest >> testPrettyPrint [
| decorator1 |
self assert: decoratorNombre  prettyPrint equals: 'abc st '.

decorator1:= Nombre createComponent: (Extension createComponent: (Tamanio createComponent: fileOO2 )).
self assert: decorator1  prettyPrint equals: 'abc st 5kb '.
]
