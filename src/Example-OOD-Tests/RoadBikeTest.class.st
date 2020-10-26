Class {
	#name : #RoadBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
RoadBikeTest >> testChain [
	| roadBike |
	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: {#size . 'M' . #tapeColor . 'red'}).
	self assert: roadBike chain equals: '10-speed' 
]

{ #category : #tests }
RoadBikeTest >> testSize [
	| roadBike |
	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: { #size . 'M' . #tapeColor . 'red' }).
	self assert: roadBike size equals: 'M'
]

{ #category : #tests }
RoadBikeTest >> testSpares [
	| roadBike expected |
	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: { #style . #road . #size . 'M' . #tapeColor . 'red' }).
	expected := Dictionary newFromPairs: { #chain . '10-speed' . #tapeColor . 'red' . #tireSize . '23' }.
	self assert: roadBike spares equals: expected	
]

{ #category : #tests }
RoadBikeTest >> testTireSize [
	| roadBike |
	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: {#size . 'M' . #tapeColor . 'red'}).
	self assert: roadBike tireSize equals: '23' 
]
