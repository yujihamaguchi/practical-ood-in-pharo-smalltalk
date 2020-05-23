Class {
	#name : #TripCoodinatorTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

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
