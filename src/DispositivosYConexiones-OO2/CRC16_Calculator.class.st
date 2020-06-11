Class {
	#name : #'CRC16_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'DispositivosYConexiones-OO2'
}

{ #category : #'as yet unclassified' }
CRC16_Calculator >> crcFor:datos [
^ CRC crc16FromCollection: datos
]
