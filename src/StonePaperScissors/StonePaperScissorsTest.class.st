Class {
	#name : #StonePaperScissorsTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
StonePaperScissorsTest >> testLizardAgainstLizard [

	self assert: (Lizard new play: Lizard new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testLizardAgainstPaperIsWinning [

	self assert: (Lizard new play: Paper new) equals: #lizard
]

{ #category : #tests }
StonePaperScissorsTest >> testLizardAgainstScissorsIsLoosing [

	self assert: (Lizard new play: Scissors new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testLizardAgainstSpockIsWinning [

	self assert: (Lizard new play: Spock new) equals: #lizard
]

{ #category : #tests }
StonePaperScissorsTest >> testLizardAgainstStoneIsLoosing [

	self assert: (Lizard new play: Stone new) equals: #stone
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstLizardIsLoosing [

	self assert: (Paper new play: Lizard new) equals: #lizard
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstPaper [

	self assert: (Paper new play: Paper new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstScissorsIsLoosing [

	self assert: (Paper new play: Scissors new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstSpockIsWinning [

	self assert: (Paper new play: Spock new) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstStoneIsWinning [

	self assert: (Paper new play: Stone new) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsAgainstLizardIsWinning [

	self assert: (Scissors new play: Lizard new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsAgainstPaperIsWinning [

	self assert: (Scissors new play:  Paper new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsAgainstScissors [

	self assert: (Scissors new play: Scissors new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsAgainstSpockIsLoosing [

	self assert: (Scissors new play: Spock new) equals: #spock
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsAgainstStoneIsLoosing [

	self assert: (Scissors new play:  Stone new) equals: #stone
]

{ #category : #tests }
StonePaperScissorsTest >> testSpockAgainstLizardIsLoosing [

	self assert: (Spock new play: Lizard new) equals: #lizard
]

{ #category : #tests }
StonePaperScissorsTest >> testSpockAgainstPaperIsLoosing [

	self assert: (Spock new play: Paper new) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testSpockAgainstScissorsIsWinning [

	self assert: (Spock new play: Scissors new) equals: #spock
]

{ #category : #tests }
StonePaperScissorsTest >> testSpockAgainstSpock [

	self assert: (Spock new play: Spock new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testSpockAgainstStoneIsWinning [

	self assert: (Spock new play: Stone new) equals: #spock
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainstLizardIsWinning [

	self assert: (Stone new play: Lizard new) equals: #stone
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainstPaperIsLoosing [

	self assert: (Stone new play: Paper new) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainstScissorsIsWinning [

	self assert: (Stone new play:  Scissors new) equals: #stone
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainstSpockIsLoosing [

	self assert: (Stone new play: Spock new) equals: #spock
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainstStone [

	self assert: (Stone new play: Stone new) equals: #draw
]
