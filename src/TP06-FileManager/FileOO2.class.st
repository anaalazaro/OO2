Class {
	#name : #FileOO2,
	#superclass : #Component,
	#instVars : [
		'nombre',
		'extension',
		'tamanio',
		'fechaCreacion',
		'fechaModificacion',
		'permisos'
	],
	#category : #'TP06-FileManager'
}

{ #category : #'as yet unclassified' }
FileOO2 class >> nombre: aNombre extension:aExtension tamanio:atamanio fechaModificacion:afecha permisos:aPermisos [
^ self new nombre:aNombre ;extension: aExtension ; permisos:aPermisos; tamanio: atamanio ;fechaModificacion: afecha; fechaCreacion: DateAndTime now.
]

{ #category : #accessing }
FileOO2 >> extension [
	^ extension
]

{ #category : #accessing }
FileOO2 >> extension: anObject [
	extension := anObject
]

{ #category : #accessing }
FileOO2 >> fechaCreacion [
	^ fechaCreacion
]

{ #category : #accessing }
FileOO2 >> fechaCreacion: anObject [
	fechaCreacion := anObject
]

{ #category : #accessing }
FileOO2 >> fechaModificacion [
	^ fechaModificacion
]

{ #category : #accessing }
FileOO2 >> fechaModificacion: anObject [
	fechaModificacion := anObject
]

{ #category : #accessing }
FileOO2 >> nombre [
	^ nombre
]

{ #category : #accessing }
FileOO2 >> nombre: anObject [
	nombre := anObject
]

{ #category : #accessing }
FileOO2 >> permisos [
	^ permisos
]

{ #category : #accessing }
FileOO2 >> permisos: anObject [
	permisos := anObject
]

{ #category : #'menu commands' }
FileOO2 >> prettyPrint [ 
^''
]

{ #category : #accessing }
FileOO2 >> tamanio [
	^ tamanio
]

{ #category : #accessing }
FileOO2 >> tamanio: anObject [
	tamanio := anObject
]
