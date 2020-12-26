Class {
	#name : #Bicycle,
	#superclass : #Object,
	#instVars : [
		'size',
		'parts'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #initialization }
Bicycle >> initialize: aDict [
	size := aDict at: #size ifAbsent: nil.
	parts := aDict at: #parts ifAbsent: nil.
	^ self
]

{ #category : #accessing }
Bicycle >> size [ 
	^ size
]

{ #category : #accessing }
Bicycle >> spares [
	^ parts spares
]
