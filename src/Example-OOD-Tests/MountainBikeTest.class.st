Class {
	#name : #MountainBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
MountainBikeTest >> testChain [
	| mountainBike |
	mountainBike := MountainBike new.
	mountainBike initialize: (Dictionary newFromPairs: { #size . 'M' . #frontShock . 'Manitou' . #rearShock . 'Fox' }).
	self assert: mountainBike chain equals: '10-speed'
]

{ #category : #tests }
MountainBikeTest >> testSize [ 
	| mountainBike |
	mountainBike := MountainBike new.
	mountainBike initialize: (Dictionary newFromPairs: { #size . 'M' . #frontShock . 'Manitou' . #rearShock . 'Fox' }).
	self assert: mountainBike size equals: 'M'
]

{ #category : #tests }
MountainBikeTest >> testTireSize [ 
	| mountainBike |
	mountainBike := MountainBike new.
	mountainBike initialize: (Dictionary newFromPairs: { #size . 'M' . #frontShock . 'Manitou' . #rearShock . 'Fox' }).
	self assert: mountainBike tireSize equals: '2.1'
]
