Class {
	#name : #DiceHandleTest,
	#superclass : #TestCase,
	#category : #MyDice
}

{ #category : #tests }
DiceHandleTest >> testAddTwoDice [

	| hd |
	hd:= (Dice withFaces: 6) + (Dice withFaces: 6).
	self assert: hd dice size = 2.
]

{ #category : #tests }
DiceHandleTest >> testAddingADiceAndHandle [

	| hd |
	hd:= (Dice withFaces: 6)
		+
			(DiceHandle new 
				addDice: 6;
				yourself).
	self assert: hd dice size equals: 2
]

{ #category : #tests }
DiceHandleTest >> testAddingAnHandleWithADie [

	| handle res |
	handle:= DiceHandle new
		addDice: (Dice withFaces: 6);
		addDice: (Dice withFaces: 6);
		yourself.
	res:= handle + (Dice withFaces: 20).
	self assert: res diceNumber equals: 3.
]

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

{ #category : #tests }
DiceHandleTest >> testRoll [

	| handle |
	handle:= DiceHandle new
		addDice: (Dice withFaces: 6);
		addDice: (Dice withFaces: 10);
		yourself.
	1000 timesRepeat: [ handle roll between:2  and:16 ]
]

{ #category : #tests }
DiceHandleTest >> testSimpleHandle [

	self assert: 2 D20 diceNumber= 2.
]

{ #category : #tests }
DiceHandleTest >> testSumming [

	| handle |
	handle:= 2 D20 + 3 D10.
	self assert: handle diceNumber = 5.
]
