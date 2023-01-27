Class {
	#name : #Lizard,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Lizard >> play: anotherTool [

	^ anotherTool playAgainstLizard: self
]

{ #category : #'as yet unclassified' }
Lizard >> playAgainstLizard: aLizard [

	^ #draw
]

{ #category : #'as yet unclassified' }
Lizard >> playAgainstPaper: aPaper [

	^ #lizard
]

{ #category : #'as yet unclassified' }
Lizard >> playAgainstScissors: aScissors [

	^ #scissors
]

{ #category : #'as yet unclassified' }
Lizard >> playAgainstSpock: aSpock [

	^ #lizard
]

{ #category : #'as yet unclassified' }
Lizard >> playAgainstStone: aStone [

	^ #stone
]
