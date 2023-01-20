Class {
	#name : #DiceHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #MyDice
}

{ #category : #adding }
DiceHandle >> addDice: aDie [

	dice add: aDie.
]

{ #category : #accessing }
DiceHandle >> diceNumber [
	^ dice size.
]

{ #category : #initialization }
DiceHandle >> initialize [

	super initialize.
	dice:= OrderedCollection new.
]
