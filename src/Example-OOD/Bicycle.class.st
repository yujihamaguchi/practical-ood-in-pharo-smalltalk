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
Bicycle >> initialize: dictionary [
	size := dictionary at: #size.
	tapeColor := dictionary at: #tapeColor.
	^ self
]

{ #category : #accessing }
Bicycle >> size [ 
	^ size
]

{ #category : #accessing }
Bicycle >> spares [
	| dictionary |
	dictionary := Dictionary new.
	dictionary add: (Association new; key: #size value: size).
	dictionary add: (Association new; key: #tapeColor value: tapeColor).
	dictionary add: (Association new; key: #tireSize value: '23').
	^ dictionary
	
]
