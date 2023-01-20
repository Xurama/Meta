Class {
	#name : #DiceHandleTest,
	#superclass : #TestCase,
	#category : #MyDice
}

{ #category : #tests }
DiceHandleTest >> testAddingTwiceTheSameDice [

	| handle |
	handle:= DiceHandle new.
	handle addDice: (Dice withFaces: 6).
	self assert: handle diceNumber= 1.
	handle addDice: (Dice withFaces: 6).
	self assert: handle diceNumber = 2.
]

{ #category : #tests }
DiceHandleTest >> testCreationAdding [

	| handle |
	handle:= DiceHandle new
		addDice: (Dice withFaces: 6);
		addDice: (Dice withFaces: 10);
		yourself.
	self assert: handle diceNumber = 2.
]
