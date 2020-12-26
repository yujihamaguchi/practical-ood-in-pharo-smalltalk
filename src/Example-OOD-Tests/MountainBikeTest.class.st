Class {
	#name : #MountainBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
MountainBikeTest >> testSize [
	| mountainBike |
	mountainBike := MountainBike new.
	mountainBike initialize: (Dictionary newFromPairs: {#size . 'M'}).
	self assert: mountainBike size equals: 'M'
]

{ #category : #tests }
MountainBikeTest >> testSpares [
	| mountainBike parts expected |
	mountainBike := MountainBike new.
	parts := MountainBikeParts new.
	parts initialize: (Dictionary newFromPairs: {#rearShock . 'Fox'}).
	mountainBike initialize: (Dictionary newFromPairs: {#size . 'L' . #parts . parts}).
	expected := Dictionary newFromPairs: {#tireSize . '2.1' . #chain. '10-speed' . #rearShock . 'Fox'}.
	self assert: mountainBike spares equals: expected.

]
