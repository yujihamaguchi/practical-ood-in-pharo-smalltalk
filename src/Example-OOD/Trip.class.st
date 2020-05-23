Class {
	#name : #Trip,
	#superclass : #Object,
	#instVars : [
		'bicycles',
		'customers',
		'vehicle'
	],
	#category : #'Example-OOD-Trip'
}

{ #category : #accessing }
Trip >> bicycles [
	^ bicycles
]

{ #category : #accessing }
Trip >> customers [
	^ customers
]

{ #category : #dispatching }
Trip >> prepare: preparers [
	preparers do: [ :aPreparer | aPreparer prepareTrip: self ]
]

{ #category : #initialization }
Trip >> setBicycles: someBicycles customers: someCustomers vehicle: aVehicle [
	bicycles := someBicycles .
	customers := someCustomers .
	vehicle := aVehicle .
	^ self
]

{ #category : #accessing }
Trip >> vehicle [
	^ vehicle
]
