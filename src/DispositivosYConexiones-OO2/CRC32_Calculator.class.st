Class {
	#name : #'CRC32_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'DispositivosYConexiones-OO2'
}

{ #category : #'as yet unclassified' }
CRC32_Calculator >> crcFor: datos [
^CRC crc32FromCollection: datos
]
