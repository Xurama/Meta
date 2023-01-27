Class {
	#name : #StonePaperScissorsTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstPaper [

	self assert: (Paper new play: Paper new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstScissorsIsLoosing [

	self assert: (Paper new play: Scissors new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstStoneIsWinning [

	self assert: (Paper new play: Stone new) equals: #paper
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
StonePaperScissorsTest >> testScissorsAgainstStoneIsLoosing [

	self assert: (Scissors new play:  Stone new) equals: #stone
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
StonePaperScissorsTest >> testStoneAgainstStone [

	self assert: (Stone new play: Stone new) equals: #draw
]
