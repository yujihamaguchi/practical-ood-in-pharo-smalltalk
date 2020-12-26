Class {
	#name : #MountainBikeParts,
	#superclass : #Parts,
	#type : #variable,
	#instVars : [
		'frontShock',
		'rearShock'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
MountainBikeParts >> defaultTireSize [
	^ '2.1'
]

{ #category : #accessing }
MountainBikeParts >> localSpares [
	^ Dictionary newFromPairs: {#rearShock . rearShock}
]

{ #category : #initialization }
MountainBikeParts >> postInitialize: aDict [
	frontShock := aDict at: #frontShock ifAbsent: nil.
	rearShock := aDict at: #rearShock ifAbsent: nil.
	^ self
]
