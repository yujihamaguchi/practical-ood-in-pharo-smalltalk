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
Bicycle >> initialize: aDict [
	size := aDict at: #size.
	tapeColor := aDict at: #tapeColor.
	^ self
]

{ #category : #accessing }
Bicycle >> size [ 
	^ size
]

{ #category : #accessing }
Bicycle >> spares [
	^ Dictionary newFromPairs: { #size . size . #tapeColor . tapeColor . #tireSize . '23' }
	
]
