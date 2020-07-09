Class {
	#name : #MountainBicycle,
	#superclass : #Bicycle,
	#instVars : [
		'frontShock',
		'rearShock'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #initialization }
MountainBicycle >> setSize: aSize frontShock: aFrontShock rearShock: aRearShock [
	size := aSize.
	frontShock := aFrontShock .
	rearShock := aRearShock .
	^ self
]

{ #category : #accessing }
MountainBicycle >> spares [
	| spares |
	spares := super spares.
	spares
		at: #frontShock put: frontShock;
		at: #rearShock put: rearShock.
	^ spares
]
