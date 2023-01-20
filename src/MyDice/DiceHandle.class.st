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

{ #category : #'as yet unclassified' }
DiceHandle >> roll [

	| res |
	res:= 0.
	dice do: [ :each | res := res + each roll ].
	^ res.
]
