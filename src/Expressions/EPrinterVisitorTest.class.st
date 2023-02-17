Class {
	#name : #EPrinterVisitorTest,
	#superclass : #TestCase,
	#category : #'Expressions-Model'
}

{ #category : #tests }
EPrinterVisitorTest >> testVisitAdditionPrinter [

	| expression result |
	expression:= EAddition
		left: (EConstant value: 7)
		right: (EConstant value: -2).
	result:= expression accept: EPrinterVisitor new.
	self assert: result equals: '(7 + -2)'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitConstantPrinter [

	| constant result |
	constant:= EConstant value: 5.
	result:= constant accept: EPrinterVisitor new.
	self assert: result equals: '5'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitDivisionPrinter [

	| expression result |
	expression := EDivision
		numerator: (EConstant value: 6)
		denominator: (EConstant value: 3).
	result := expression accept: EPrinterVisitor new.
	self assert: result equals: '(6 / 3)'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitMultiplicationPrinter [

	| expression result |
	expression := EMultiplication
		left: (EConstant value: 7)
		right: (EConstant value: -2).
	result := expression accept: EPrinterVisitor new.
	self assert: result equals: '(7 * -2)'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitNegatedPrinter [

	| expression result |
	expression:= (EConstant value: 7) negated.
	result:= expression accept: EPrinterVisitor new.
	self assert: result equals: '7 negated'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitVariablePrinter [

	| expression result |
	expression:= EVariable id: #answerToTheQuestion.
	
	result := expression accept: EPrinterVisitor new.
	self assert: result equals: 'answerToTheQuestion'.
]
