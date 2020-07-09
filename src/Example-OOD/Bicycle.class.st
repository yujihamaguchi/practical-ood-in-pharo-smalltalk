Class {
	#name : #Bicycle,
	#superclass : #Object,
	#instVars : [
		'size',
		'chain',
		'tireSize'
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
