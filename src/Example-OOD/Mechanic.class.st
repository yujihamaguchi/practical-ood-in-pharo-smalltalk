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
Mechanic >> prepareTrip: aTrip [
	aTrip bicycles do: [ :aBicycle | self prepareBicycle: aBicycle ]
]
