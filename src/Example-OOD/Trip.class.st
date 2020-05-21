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

{ #category : #dispatching }
Trip >> prepare: preparers [
	preparers
		do: [ :preparer | 
			preparer class == Mechanic
				ifTrue: [ preparer prepareBicycles: bicycles ].
			preparer class == TripCoordinator
				ifTrue: [ preparer buyFood: customers ].
			preparer class == Driver
				ifTrue: [ preparer
						gasUp: vehicle;
						fillWaterTank: vehicle ] ]
]

{ #category : #initialization }
Trip >> setBicycles: someBicycles customers: someCustomers vehicle: aVehicle [
	bicycles := someBicycles .
	customers := someCustomers .
	vehicle := aVehicle .
	^ self
]
