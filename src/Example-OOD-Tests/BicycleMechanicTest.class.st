Class {
	#name : #BicycleMechanicTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
BicycleMechanicTest >> testIsSchedulableFromTo [
	| mechanic schedule startDate endDate startDateConsideringLeadDays|
	mechanic := BicycleMechanic new.
	schedule := Mock new.

	startDate := Date year: 2015 month: 9 day: 5.
	endDate := Date year: 2015 month: 9 day: 10.
	startDateConsideringLeadDays := Date year: 2015 month: 9 day: 3.

	mechanic stub leadDays willReturn: 2.
	(mechanic stub isScheduledFrom: startDateConsideringLeadDays to: endDate in: schedule) willReturn: false.

	self assert: (mechanic isSchedulableFrom: startDate to: endDate in: schedule) equals: true.

	mechanic should receive leadDays.
	mechanic should receive isScheduledFrom: startDateConsideringLeadDays to: endDate in: schedule.
]
