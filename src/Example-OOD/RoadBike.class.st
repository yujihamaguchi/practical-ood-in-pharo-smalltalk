Class {
	#name : #RoadBike,
	#superclass : #Bicycle,
	#instVars : [
		'tapeColor'
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
	| spares |
	spares := super spares.
	spares
		addAll:
			(Dictionary
				newFromPairs:
					{#tapeColor.
					tapeColor}).
	^ spares
]
