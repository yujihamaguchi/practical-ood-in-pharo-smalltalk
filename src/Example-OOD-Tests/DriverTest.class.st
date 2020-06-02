Class {
	#name : #DriverTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #tests }
DriverTest >> testPrepareTrip [
	| driver trip |
	driver := Driver new.
	driver stub.
	trip := Mock new.
	trip stub vehicle willReturn: #vehicle.
	driver prepareTrip: trip.
	driver should receive gasUp: #vehicle.
	driver should receive fillWaterTank: #vehicle
]
