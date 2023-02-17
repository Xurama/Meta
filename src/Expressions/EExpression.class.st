Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #visiting }
EExpression >> accept: aVisitor [

	self subclassResponsibility 
]

{ #category : #visiting }
EExpression >> evaluateWith: anEnvironnment [

	| visitor |
	
	visitor:= EEvaluatorVisitor new.
	visitor bindings: anEnvironnment.

	^ self accept: visitor.
]

{ #category : #accessing }
EExpression >> negated [

	^ ENegation new expression: self
]
