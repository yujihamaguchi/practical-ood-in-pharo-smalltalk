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
Trip >> prepare: mechanic [
	mechanic prepareBicycles: bicycles

]

{ #category : #initialization }
Trip >> setBicycles: someBicycles [
	bicycles := someBicycles.
	^ self
]
