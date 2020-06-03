Class {
	#name : #TestTopografia,
	#superclass : #TestCase,
	#instVars : [
		'topografia',
		'topografiaC'
	],
	#category : #Topografias
}

{ #category : #running }
TestTopografia >> setUp [
	| t1 t2 t3 t4|
	t1 := Agua new.
	t2 := Tierra new.
	t3 := Agua new.
	t4 := Tierra new.
	topografia := Compuesta new.
	topografia agregarParte: t1.
	topografia agregarParte: t2.
	topografia agregarParte: t3.
	topografia agregarParte: t4.
	
	topografiaC := Compuesta new.
	topografiaC agregarParte:Agua new.
	topografiaC agregarParte: Tierra new.
	topografiaC agregarParte: Agua new.
	topografiaC agregarParte: topografia .
	

]

{ #category : #tests }
TestTopografia >> testEsIgualACompuesta [
|aTopografia agua tierra|
agua:=Agua new.
tierra:= Tierra new.
aTopografia := Compuesta new.
aTopografia agregarParte: Agua new.
aTopografia agregarParte: Tierra new.
aTopografia agregarParte: agua.
aTopografia agregarParte: tierra.
self assert:( topografia esIgual: aTopografia  ) equals:true.
self assert: (agua esIgual: tierra) equals:false.
]

{ #category : #tests }
TestTopografia >> testProporcionAgua [
self assert: topografia proporcionAgua equals: 1/2.
]

{ #category : #tests }
TestTopografia >> testProporcionTierra [
self assert: topografia proporcionTierra equals: 1/2.
]
