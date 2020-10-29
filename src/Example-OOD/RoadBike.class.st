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

{ #category : #'default value' }
RoadBike >> leadDays [ 
	^ 1
]

{ #category : #accessing }
RoadBike >> localSpares [
	^ Dictionary
		newFromPairs:
			{#tapeColor.
			tapeColor}
]

{ #category : #initialization }
RoadBike >> postInitialize: aDict [
	tapeColor := aDict at: #tapeColor ifAbsent: nil.
	^ self
]
