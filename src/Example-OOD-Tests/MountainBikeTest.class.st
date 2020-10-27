Class {
	#name : #MountainBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
MountainBikeTest >> testChain [
	| mountainBike |
	mountainBike := MountainBike new.
	mountainBike initialize: Dictionary empty.
	self assert: mountainBike chain equals: '10-speed'
]

{ #category : #tests }
MountainBikeTest >> testSize [
	| mountainBike |
	mountainBike := MountainBike new.
	mountainBike initialize: (Dictionary newFromPairs: {#size . 'M'}).
	self assert: mountainBike size equals: 'M'
]

{ #category : #tests }
MountainBikeTest >> testSpares [
	| mountainBike expected |
	mountainBike := MountainBike new.
	mountainBike
		initialize: (Dictionary newFromPairs: {#rearShock . 'Fox'}).
	expected := Dictionary
		newFromPairs: {#tireSize . '2.1' . #chain . '10-speed' . #rearShock . 'Fox'}.
	self assert: mountainBike spares equals: expected
]

{ #category : #tests }
MountainBikeTest >> testTireSize [
	| mountainBike |
	mountainBike := MountainBike new.
	mountainBike initialize: Dictionary empty.
	self assert: mountainBike tireSize equals: '2.1'
]
