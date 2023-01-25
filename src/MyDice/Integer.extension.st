Extension { #name : #Integer }

{ #category : #'*MyDice' }
Integer >> D10 [

	^ self D: 10
]

{ #category : #'*MyDice' }
Integer >> D20 [

	^ self D: 20
]

{ #category : #'*MyDice' }
Integer >> D4 [

	^ self D: 4
]

{ #category : #'*MyDice' }
Integer >> D6 [

	^ self D: 6
]

{ #category : #'*MyDice' }
Integer >> D: anInteger [

	| handle |
	handle:= DiceHandle new.
	self timesRepeat: [ handle addDice: (Dice withFaces: anInteger) ].
	^ handle
]
