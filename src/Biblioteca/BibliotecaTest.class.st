Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'socio',
		'otroSocio',
		'vExporter',
		'biblioteca'
	],
	#category : #'Biblioteca-Test'
}

{ #category : #running }
BibliotecaTest >> setUp [
	socio := Socio nombre: 'alex' email: 'hola@hot.com' legajo: '1212'.
	otroSocio := Socio nombre: 'ana' email: 'hi@hot.com' legajo: '1213'.
	vExporter := VoorheesExporter new.
	biblioteca := Biblioteca new
]

{ #category : #'as yet unclassified' }
BibliotecaTest >> testAgregarSocio [
	self assert: biblioteca socios size equals: 0.
	biblioteca agregarSocio: socio.
	self
		assert: (biblioteca socios includes: socio);
		assert: biblioteca socios size equals: 1
]

{ #category : #tests }
BibliotecaTest >> testExportarSocios [
	biblioteca agregarSocio: socio.
	self
		assert: biblioteca exportarSocios
		equals:
			'[
	{
		"nombre" : "alex",
		"email" : "hola@hot.com",
		"legajo" : "1212"
	}
]'
]
