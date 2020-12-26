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
	| chain mountainTire rearShock frontShock parts mountainBikeParts mountainBike expected |
	chain := Part new initialize: (Dictionary newFromPairs: {#name . 'chain' . #description . '10-speed'}).
	mountainTire := Part new initialize: (Dictionary newFromPairs: {#name . 'tireSize' . #description . '23'}).	
	rearShock := Part new initialize: (Dictionary newFromPairs: {#name . 'rearShock' . #description . 'Fox'}).	
	frontShock := Part new initialize: (Dictionary newFromPairs: {#name . 'frontShock' . #description . 'Manitou' . #needsSpare . false}).	

	parts := Set new.
	parts add: chain; add: mountainTire; add: frontShock; add: rearShock.
	
	mountainBikeParts := MountainBikeParts new.
	mountainBikeParts initialize: parts.

	mountainBike := MountainBike new.
	mountainBike initialize: (Dictionary newFromPairs: {#parts . mountainBikeParts}).

	expected := Set new.
	expected add: chain; add: mountainTire; add: rearShock.
	
	self assert: mountainBike spares equals: expected.
	
	self assert: mountainBike spares size equals: 3.
	self assert: mountainBike parts size equals: 4.
]
