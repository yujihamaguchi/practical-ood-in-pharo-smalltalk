Class {
	#name : #Driver,
	#superclass : #Object,
	#category : #'Example-OOD-Trip'
}

{ #category : #preparation }
Driver >> fillWaterTank: aVehicle [
	^ self
]

{ #category : #preparation }
Driver >> gasUp: aVehicle [
	^ self
]

{ #category : #preparation }
Driver >> prepareTrip: aTrip [
	| vehicle |
	vehicle := aTrip vehicle.
	self gasUp: vehicle.
	self fillWaterTank: vehicle
]
