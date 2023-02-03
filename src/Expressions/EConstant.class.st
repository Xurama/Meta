Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> value: anInteger [

	^ self new value: anInteger 
]

{ #category : #'public access' }
EConstant >> evaluate [

	^ value
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value:= anInteger
]