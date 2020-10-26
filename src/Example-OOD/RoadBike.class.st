Class {
	#name : #RoadBike,
	#superclass : #Bicycle,
	#instVars : [
		'tapeColor',
		'frontShock',
		'rearShock'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
RoadBike >> defaultTireSize [
	^ '23'
]

{ #category : #initialization }
RoadBike >> initialize: aDict [
	tapeColor := aDict at: #tapeColor ifAbsent: nil.
	super initialize: aDict.
	^ self
]

{ #category : #accessing }
RoadBike >> spares [
	^ Dictionary newFromPairs: { #chain . '10-speed' . #tireSize . '23' . #tapeColor . tapeColor }	
]
