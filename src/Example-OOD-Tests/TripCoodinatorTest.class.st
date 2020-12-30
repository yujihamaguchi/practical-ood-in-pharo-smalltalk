Class {
	#name : #TripCoodinatorTest,
	#superclass : #TestCase,
	#traits : 'TPrepareInterfaceTest',
	#classTraits : 'TPrepareInterfaceTest classTrait',
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #'as yet unclassified' }
TripCoodinatorTest >> targetObject [
	^ TripCoordinator new 
]

{ #category : #tests }
TripCoodinatorTest >> testPrepareTrip [
	| tripCoordinator trip |
	tripCoordinator := TripCoordinator new.
	tripCoordinator stub.
	trip := Mock new.
	trip stub customers willReturn: #customers.
	tripCoordinator prepareTrip: trip.
	tripCoordinator should receive buyFood: #customers
]
