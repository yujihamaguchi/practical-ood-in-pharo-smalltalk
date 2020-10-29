Class {
	#name : #BicycleMechanic,
	#superclass : #Object,
	#traits : 'TSchedulable',
	#classTraits : 'TSchedulable classTrait',
	#instVars : [
		'schedule'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
BicycleMechanic >> leadDays [
	^ 4
]
