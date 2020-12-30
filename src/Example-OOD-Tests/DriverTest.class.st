Class {
	#name : #DriverTest,
	#superclass : #TestCase,
	#traits : 'TPrepareInterfaceTest',
	#classTraits : 'TPrepareInterfaceTest classTrait',
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #'as yet unclassified' }
DriverTest >> targetObject [
	^ Driver new 
]

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
