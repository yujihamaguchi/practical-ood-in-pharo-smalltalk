Class {
	#name : #RoadBikeParts,
	#superclass : #Parts,
	#instVars : [
		'tapeColor'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
RoadBikeParts >> defaultTireSize [
	^ '23'
]

{ #category : #accessing }
RoadBikeParts >> localSpares [
	^ Dictionary newFromPairs: {#tapeColor . tapeColor}
]

{ #category : #initialization }
RoadBikeParts >> postInitialize: aDict [
	tapeColor := aDict at: #tapeColor ifAbsent: nil.
	^ self
]
