Class {
	#name : #MechanicTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #tests }
MechanicTest >> testPrepareBicycles [
	| mechanic |
	mechanic := Mechanic new.
	mechanic stub.
	mechanic prepareBicycles: #(#bicycle1).
	(mechanic should receive prepareBicycle: #bicycle1) once
]
