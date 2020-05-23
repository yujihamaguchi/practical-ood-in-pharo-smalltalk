Class {
	#name : #MechanicTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #tests }
MechanicTest >> testPrepareTrip [
	| mechanic aTrip |
	mechanic := Mechanic new.
	mechanic stub.
	aTrip := Mock new.
	aTrip stub bicycles willReturn: #(#aBicycle #anotherBicycle).
	mechanic prepareTrip: aTrip.
	(mechanic should receive prepareBicycle: #aBicycle) once.
	(mechanic should receive prepareBicycle: #anotherBicycle) once
]
