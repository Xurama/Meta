Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'public access' }
EAddition >> evaluate [

	^ right evaluate + left evaluate
]

{ #category : #accessing }
EAddition >> left: anExpression [

	left:= anExpression 
]

{ #category : #accessing }
EAddition >> right: anExpression [

	right:= anExpression
]
