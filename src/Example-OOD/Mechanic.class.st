Class {
	#name : #Mechanic,
	#superclass : #Object,
	#category : #'Example-OOD-Trip'
}

{ #category : #preparation }
Mechanic >> prepareBicycle: bicycle [
	^ self
]

{ #category : #preparation }
Mechanic >> prepareBicycles: bicycles [
	bicycles do: [ :bicycle | self prepareBicycle: bicycle ]
]
