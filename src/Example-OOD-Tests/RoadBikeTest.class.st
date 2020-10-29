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
	| bicycle startDate startDateConsideringLeadDays endDate schedule |
	bicycle := RoadBike new.
	schedule := Mock new.

	startDate := Date year: 2015 month: 9 day: 5.
	endDate := Date year: 2015 month: 9 day: 10.
	startDateConsideringLeadDays :=  Date year: 2015 month: 9 day: 4.
	
	bicycle stub leadDays willReturn: 1.	
	(bicycle stub isScheduledFrom: startDateConsideringLeadDays to: endDate in: schedule) willReturn: false.
	
	self assert: (bicycle isSchedulableFrom: startDate to: endDate in: schedule) equals: true.
	
	bicycle should receive leadDays.
	bicycle should receive isScheduledFrom: startDateConsideringLeadDays to: endDate in: schedule.
]

{ #category : #tests }
RoadBikeTest >> testIsScheduledFromTo [
	| bicycle schedule startDate endDate |
	bicycle := RoadBike new.
	schedule := Mock new.
	startDate := Mock new.
	endDate := Mock new.
	bicycle initialize: (Dictionary newFromPairs: {#schedule . schedule}).

	(schedule stub isScheduled: bicycle from: startDate to: endDate) willReturn: false.

	self assert: (bicycle isScheduledFrom: startDate to: endDate in: schedule) equals: false.

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
