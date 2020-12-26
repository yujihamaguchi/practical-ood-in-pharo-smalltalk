Class {
	#name : #RoadBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
RoadBikeTest >> testSize [
	| roadBike |
	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: {#size . 'L'}).
	self assert: roadBike size equals: 'L'
]

{ #category : #tests }
RoadBikeTest >> testSpares [
	| roadBike parts expected |
	roadBike := RoadBike new.
	parts := RoadBikeParts new.
	parts initialize: (Dictionary newFromPairs: {#tapeColor . 'red'}).
	roadBike initialize: (Dictionary newFromPairs: {#size . 'L' . #parts . parts}).
	expected := Dictionary newFromPairs: {#chain . '10-speed' . #tapeColor . 'red' . #tireSize . '23'}.
	self assert: roadBike spares equals: expected.

]
