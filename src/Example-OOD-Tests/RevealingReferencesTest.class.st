Class {
	#name : #RevealingReferencesTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests'
}

{ #category : #tests }
RevealingReferencesTest >> testDiameters [
	| revealingReferences |
	revealingReferences := RevealingReferences
		data: #(#(622 20) #(622 23) #(559 30) #(559 40)).
	self assert: revealingReferences diameters equals: #(662 668 619 639)
]
