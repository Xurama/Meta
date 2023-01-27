Class {
	#name : #Spock,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Spock >> play: anotherTool [

	^ anotherTool playAgainstSpock: self
]

{ #category : #'as yet unclassified' }
Spock >> playAgainstLizard: aLizard [

	^ #lizard
]

{ #category : #'as yet unclassified' }
Spock >> playAgainstPaper: aPaper [

	^ #paper
]

{ #category : #'as yet unclassified' }
Spock >> playAgainstScissors: aScissors [

	^ #spock
]

{ #category : #'as yet unclassified' }
Spock >> playAgainstSpock: aSpock [

	^ #draw
]

{ #category : #'as yet unclassified' }
Spock >> playAgainstStone: aStone [

	^ #spock
]
