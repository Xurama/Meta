Class {
	#name : #EDivision,
	#superclass : #EExpression,
	#instVars : [
		'numerator',
		'denominator'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EDivision class >> numerator: aNumeratorExpression denominator: aDenominatorExpression [

	^ self new
	numerator: aNumeratorExpression;
	denominator: aDenominatorExpression;
	yourself.
]

{ #category : #accessing }
EDivision >> accept: aVisitor [

	^ aVisitor visitDivision: self
]

{ #category : #accessing }
EDivision >> denominator [ 

	^ denominator 
]

{ #category : #accessing }
EDivision >> denominator: aDenominator [

	denominator:= aDenominator 
]

{ #category : #accessing }
EDivision >> numerator [

	^ numerator
]

{ #category : #accessing }
EDivision >> numerator: aNumerator [

	numerator:= aNumerator
]

{ #category : #'public access' }
EDivision >> operatorString [

	^ ' / '
]
