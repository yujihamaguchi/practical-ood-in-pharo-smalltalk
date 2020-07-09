Class {
	#name : #Bicycle,
	#superclass : #Object,
	#instVars : [
		'size',
		'tapeColor'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #initialization }
Bicycle >> setSize: aSize tapeColor: aColor [
	size := aSize.
	tapeColor := aColor.
	^ self
]

{ #category : #accessing }
Bicycle >> size [
	^ size
]

{ #category : #accessing }
Bicycle >> spares [
	| attributes |
	attributes := Dictionary new.
	attributes
		at: #tireSize put: 23;
		at: #chain put: '10-speed';
		at: #tapeColor put: tapeColor.
	^ attributes
]

{ #category : #accessing }
Bicycle >> tapeColor [
	^ tapeColor
]
