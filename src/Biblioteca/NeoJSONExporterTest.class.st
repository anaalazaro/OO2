Class {
	#name : #NeoJSONExporterTest,
	#superclass : #TestCase,
	#instVars : [
		'socio',
		'otroSocio',
		'nExporter',
		'biblioteca'
	],
	#category : #'Biblioteca-Test'
}

{ #category : #running }
NeoJSONExporterTest >> setUp [
	socio := Socio nombre: 'alex' email: 'hola@hot.com' legajo: '1212'.
	otroSocio := Socio nombre: 'ana' email: 'hi@hot.com' legajo: '1213'.
	nExporter := NeoJSONExporter new.
	biblioteca := Biblioteca new
]

{ #category : #tests }
NeoJSONExporterTest >> testExport [
	biblioteca
		agregarSocio: socio;
		agregarSocio: otroSocio.
	self
		assert: (nExporter export: biblioteca socios)
		equals:
			'[
	{
		"nombre" : "alex",
		"email" : "hola@hot.com",
		"legajo" : "1212"
	},
	{
		"nombre" : "ana",
		"email" : "hi@hot.com",
		"legajo" : "1213"
	}
]'
]
