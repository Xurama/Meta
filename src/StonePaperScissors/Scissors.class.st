Class {
	#name : #Scissors,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Scissors >> play: anotherTool [

	^ anotherTool playAgainstScissors: self
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstLizard: aLizard [

	^ #scissors
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstPaper: aPaper [

	^ #scissors
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstScissors: aScissors [

	^ #draw
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstSpock: aSpock [

	^ #spock
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstStone: aStone [

	^ #stone
]
