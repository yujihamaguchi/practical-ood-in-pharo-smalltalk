Class {
	#name : #MountainBike,
	#superclass : #Bicycle,
	#instVars : [
		'tapeColor',
		'frontShock',
		'rearShock'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
MountainBike >> defaultTireSize [
	^ '2.1'
]

{ #category : #initialization }
MountainBike >> initialize: aDict [
	frontShock := aDict at: #frontShock ifAbsent: nil.
	rearShock := aDict at: #rearShock ifAbsent: nil.
	super initialize: aDict.
	^ self
]

{ #category : #accessing }
MountainBike >> spares [
	| spares |
	spares := super spares.
	spares addAll: (Dictionary newFromPairs: {#rearShock . rearShock }).
	^ spares
]
