Class {
	#name : #ObscuringReferencesTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests'
}

{ #category : #tests }
ObscuringReferencesTest >> testDiameters [
	| obscuringReferences |
	obscuringReferences := ObscuringReferences
		data: #(#(622 20) #(622 23) #(559 30) #(559 40)).
	self assert: obscuringReferences diameters equals: #(662 668 619 639)
]
