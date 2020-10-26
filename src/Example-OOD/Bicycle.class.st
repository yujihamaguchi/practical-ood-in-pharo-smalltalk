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

{ #category : #accessing }
Bicycle >> chain [
	^ chain
]

{ #category : #'default value' }
Bicycle >> defaultChain [
	^ '10-speed'
]

{ #category : #'default value' }
Bicycle >> defaultTireSize [
	^ self subclassResponsibility 
]

{ #category : #initialization }
Bicycle >> initialize: aDict [
	size := aDict at: #size.
	chain := aDict at: #chain ifAbsent: self defaultChain.
	tireSize := aDict at: #tireSize ifAbsent: self defaultTireSize.
	^ self
]

{ #category : #accessing }
Bicycle >> size [ 
	^ size
]

{ #category : #accessing }
Bicycle >> tireSize [
	^ tireSize
]
