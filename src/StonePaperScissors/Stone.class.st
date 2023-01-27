Class {
	#name : #Stone,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Stone >> play: anotherTool [

	^ anotherTool playAgainstStone: self
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstLizard: aLizard [

	^ #stone
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstPaper: aPaper [

	^ #paper
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstScissors: aScissors [

	^ #stone
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstSpock: aSpock [

	^ #spock
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstStone: aStone [

	^ #draw
]
