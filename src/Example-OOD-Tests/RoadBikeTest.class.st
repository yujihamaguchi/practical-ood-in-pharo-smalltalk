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
	| chain roadTire tape parts roadBikeParts roadBike expected |
	chain := Part new initialize: (Dictionary newFromPairs: {#name . 'chain' . #description . '10-speed'}).
	roadTire := Part new initialize: (Dictionary newFromPairs: {#name . 'tireSize' . #description . '23'}).	
	tape := Part new initialize: (Dictionary newFromPairs: {#name . 'tapeColor' . #description . 'red'}).	

	parts := Set new.
	parts add: chain; add: roadTire; add: tape.
	
	roadBikeParts := RoadBikeParts new.
	roadBikeParts initialize: parts.

	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: {#parts . roadBikeParts}).

	expected := parts.
	self assert: roadBike spares equals: expected.

]
