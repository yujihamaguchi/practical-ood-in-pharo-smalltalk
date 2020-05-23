Class {
	#name : #TripCoordinator,
	#superclass : #Object,
	#category : #'Example-OOD-Trip'
}

{ #category : #preparation }
TripCoordinator >> buyFood: someCustomers [
	^ self
]

{ #category : #preparation }
TripCoordinator >> prepareTrip: aTrip [
   self buyFood: aTrip customers
]
