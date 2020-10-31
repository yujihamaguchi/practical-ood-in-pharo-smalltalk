Class {
	#name : #RoadBikeTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
RoadBikeTest >> testChain [
	| roadBike |
	roadBike := RoadBike new.
	roadBike initialize: Dictionary empty.
	self assert: roadBike chain equals: '10-speed'
]

{ #category : #tests }
RoadBikeTest >> testIsSchedulableFromTo [
	| bicycle startDate startDateConsideringLeadDays endDate |
	startDate := Date year: 2015 month: 9 day: 5.
	endDate := Date year: 2015 month: 9 day: 10.

	bicycle := RoadBike new.
	startDateConsideringLeadDays := startDate addDays: ((bicycle leadDays) negated) .
	
	(bicycle stub isScheduledFrom: startDateConsideringLeadDays to: endDate) willReturn: false.
	
	self assert: (bicycle isSchedulableFrom: startDate to: endDate) equals: true.
	
	bicycle should receive isScheduledFrom: startDateConsideringLeadDays to: endDate.
]

{ #category : #tests }
RoadBikeTest >> testIsScheduledFromTo [
	| bicycle schedule startDate endDate |
	startDate := Date year: 2015 month: 9 day: 4.
	endDate := Date year: 2015 month: 9 day: 10.

	schedule := Mock new.
	bicycle := RoadBike new.
	bicycle initialize: (Dictionary newFromPairs: {#schedule . schedule}).

	(schedule stub isScheduled: bicycle from: startDate to: endDate) willReturn: false.

	self assert: (bicycle isScheduledFrom: startDate to: endDate) equals: false.

	schedule should receive isScheduled: bicycle from: startDate to: endDate

]

{ #category : #tests }
RoadBikeTest >> testSize [
	| roadBike |
	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: {#size . 'M'}).
	self assert: roadBike size equals: 'M'
]

{ #category : #tests }
RoadBikeTest >> testSpares [
	| roadBike expected |
	roadBike := RoadBike new.
	roadBike initialize: (Dictionary newFromPairs: {#tapeColor . 'red'}).
	expected := Dictionary
		newFromPairs: {#chain . '10-speed' . #tapeColor . 'red' . #tireSize . '23'}.
	self assert: roadBike spares equals: expected
]

{ #category : #tests }
RoadBikeTest >> testTireSize [
	| roadBike |
	roadBike := RoadBike new.
	roadBike initialize: Dictionary empty.
	self assert: roadBike tireSize equals: '23'
]
