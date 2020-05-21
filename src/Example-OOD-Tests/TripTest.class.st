Class {
	#name : #TripTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #tests }
TripTest >> testPrepare [
	| mechanic bicycles trip |
	mechanic := Mechanic new.
	bicycles := #bicycles.
	(mechanic stub prepareBicycles: bicycles) willReturn: Any.
	trip := Trip new.
	trip setBicycles: bicycles.
	trip prepare: mechanic .
	(mechanic should receive prepareBicycles: bicycles) once.

]
