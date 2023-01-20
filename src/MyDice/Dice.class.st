Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #MyDice
}

{ #category : #'as yet unclassified' }
Dice class >> withFaces: aNumber [

	"Create and initialize a new dice with aNumber faces"
	| instance |
	instance:= self new.
	instance faces: aNumber.
	^ instance
]

{ #category : #accessing }
Dice >> faces [

	^ faces
]

{ #category : #accessing }
Dice >> faces: aNumber [

	faces:= aNumber
]

{ #category : #initialization }
Dice >> initialize [ 

	super initialize.
	faces:= 6.
]

{ #category : #printing }
Dice >> printOn: aStream [ 

	super printOn: aStream.
	aStream nextPutAll: ' ( ', faces printString, ')'
]

{ #category : #'as yet unclassified' }
Dice >> roll [

	^ faces atRandom
]
