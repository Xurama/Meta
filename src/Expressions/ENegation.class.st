Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression 
]

{ #category : #accessing }
ENegation >> evaluateWith: anObject [

	^ (expression evaluateWith: Dictionary new) negated
]

{ #category : #accessing }
ENegation >> expression: anExpression [

	expression := anExpression 
]

{ #category : #accessing }
ENegation >> negated [

	^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [

	aStream nextPutAll: '- '.
	expression printOn: aStream
]
