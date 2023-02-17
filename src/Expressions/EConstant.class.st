Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> constant3 [

	<sampleInstance>
	^ self new value: 3
]

{ #category : #accessing }
EConstant class >> constant5 [

	<sampleInstance>
	^ self new value: 5
]

{ #category : #accessing }
EConstant class >> value: anInteger [

	^ self new value: anInteger 
]

{ #category : #visiting }
EConstant >> accept: aVisitor [

	^ aVisitor visitConstant: self
]

{ #category : #printing }
EConstant >> printOn: aStream [

	aStream nextPutAll: value printString
]

{ #category : #printing }
EConstant >> value [

	^ value
]

{ #category : #printing }
EConstant >> value: anInteger [

	value:= anInteger
]
