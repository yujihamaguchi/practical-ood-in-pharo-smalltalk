Class {
	#name : #Mechanic,
	#superclass : #Object,
	#category : #'Example-OOD-Trip'
}

{ #category : #acccessing }
Mechanic >> prepareBicycle: bicycle [
	^ self
]

{ #category : #acccessing }
Mechanic >> prepareBicycles: bicycles [
	bicycles do: [ :bicycle | self prepareBicycle: bicycle ]
]
