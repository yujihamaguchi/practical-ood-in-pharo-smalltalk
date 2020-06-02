Class {
	#name : #MechanicTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #tests }
MechanicTest >> testPrepareTrip [
	| mechanic trip |
	mechanic := Mechanic new.
	mechanic stub.
	trip := Mock new.
	trip stub bicycles willReturn: #(#bicycle1 #bicycle2).
	mechanic prepareTrip: trip.
	(mechanic should receive prepareBicycle: #bicycle1) once.
	(mechanic should receive prepareBicycle: #bicycle2) once
]
