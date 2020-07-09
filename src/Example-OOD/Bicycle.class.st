Class {
	#name : #Bicycle,
	#superclass : #Object,
	#instVars : [
		'size'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #initialization }
Bicycle >> setSize: aSize [
	size := aSize.
	^ self
]

{ #category : #accessing }
Bicycle >> size [
	^ size
]
