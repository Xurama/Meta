Class {
	#name : #Paper,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Paper >> play: anotherTool [

	^ anotherTool playAgainstPaper: self
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstLizard: aLizard [

	^ #lizard
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstPaper: aPaper [

	^ #draw
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstScissors: aScissors [

	^ #scissors
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstSpock: aSpock [

	^ #paper
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstStone: aStone [

	^ #paper
]
