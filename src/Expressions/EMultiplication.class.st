Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'public access' }
EMultiplication >> evaluate [

	^ right evaluate * left evaluate
]

{ #category : #accessing }
EMultiplication >> left: anExpression [

	left:= anExpression 
]

{ #category : #accessing }
EMultiplication >> right: anExpression [

	right:= anExpression 
]
