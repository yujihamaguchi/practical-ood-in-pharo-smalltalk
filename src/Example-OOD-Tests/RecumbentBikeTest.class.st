Class {
	#name : #RecumbentBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
RecumbentBikeTest >> testSpares [
	| bent expected |
	bent := RecumbentBike new.
	bent
		initialize: (Dictionary newFromPairs: {#flag . 'tail and orange'}).
	expected := Dictionary
		newFromPairs: {#tireSize . '28' . #chain . '9-speed' . #flag . 'tail and orange'}.
	self assert: bent spares equals: expected
]
