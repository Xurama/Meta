Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1:= EConstant constant5.
	ep2:= EConstant constant3.
	^ self new left: ep1 ; right: ep2
	
]

{ #category : #'instance creation' }
EAddition class >> left: anInteger right:anInteger2 [

	^ self new left: anInteger ; right: anInteger2 
]

{ #category : #'public access' }
EAddition >> accept: aVisitor [

	^ aVisitor visitAddition: self
]

{ #category : #'public access' }
EAddition >> operatorString [

	^ ' + '
]
