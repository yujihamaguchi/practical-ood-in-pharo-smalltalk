Class {
	#name : #RoadBicycle,
	#superclass : #Bicycle,
	#instVars : [
		'tapeColor'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #initialization }
RoadBicycle >> setTapeColor: aColor [
	tapeColor := aColor.
	^ self
]

{ #category : #accessing }
RoadBicycle >> spares [
	| attributes |
	attributes := Dictionary new.
	attributes
		at: #tireSize put: 23;
		at: #chain put: '10-speed';
		at: #tapeColor put: tapeColor.
	^ attributes
]

{ #category : #accessing }
RoadBicycle >> tapeColor [
	^ tapeColor
]
