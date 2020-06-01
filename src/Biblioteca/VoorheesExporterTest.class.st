Class {
	#name : #VoorheesExporterTest,
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
VoorheesExporterTest >> setUp [
	socio := Socio nombre: 'alex' email: 'hola@hot.com' legajo: '1212'.
	otroSocio := Socio nombre: 'ana' email: 'hi@hot.com' legajo: '1213'.
	vExporter := VoorheesExporter new.
	biblioteca := Biblioteca new
]

{ #category : #tests }
VoorheesExporterTest >> testExport [
	biblioteca
		agregarSocio: socio;
		agregarSocio: otroSocio.
	self
		assert: (vExporter export: biblioteca socios)
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

{ #category : #tests }
VoorheesExporterTest >> testExportarSocio [
	self
		assert: (vExporter exportSocio: socio)
		equals:
			'	{
		"nombre" : "alex",
		"email" : "hola@hot.com",
		"legajo" : "1212"
	}'
]
