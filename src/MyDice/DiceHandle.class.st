Class {
	#name : #DiceHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #MyDice
}

{ #category : #arithmetic }
DiceHandle >> + aDicable [

	^ aDicable sumWithHandle: self
]

{ #category : #adding }
DiceHandle >> addDice: aDie [

	dice add: aDie.
]

{ #category : #accessing }
DiceHandle >> dice [

	^ dice
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

{ #category : #arithmetic }
DiceHandle >> sumWithDice: aDice [

	| handle |
	handle:= self class new.
	self dice do: 	[ :each | handle addDice: each ].
	handle addDice: aDice.
	^ handle
]

{ #category : #'as yet unclassified' }
DiceHandle >> sumWithHandle: aDiceHandle [

	| handle |
	handle:= self class new.
	self dice do: [ :each | handle addDice: each ].
	aDiceHandle dice do: [ :each | handle addDice: each ].
	^ handle.
	
]
