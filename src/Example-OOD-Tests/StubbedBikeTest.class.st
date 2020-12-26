Class {
	#name : #StubbedBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
StubbedBikeTest >> testSpares [
	| stubbedBike chain suddle parts stubbedBikeParts |
	
	chain := Part new initialize: (Dictionary newFromPairs: {#name . 'chain' . #description . '10-speed'}).
	suddle := Part new initialize: (Dictionary newFromPairs: {#name . 'suddle' . #description . 'painful'}).

	parts := Set new.
	parts add: chain; add: suddle.
	
	stubbedBikeParts := StubbedBikeParts new initialize: parts.

	stubbedBike := StubbedBike new initialize: (Dictionary newFromPairs: {#parts . stubbedBikeParts}).

	self assert: stubbedBike spares equals: parts.
]
