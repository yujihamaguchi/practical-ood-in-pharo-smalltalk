Class {
	#name : #Parts,
	#superclass : #Object,
	#instVars : [
		'chain',
		'tireSize'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
Parts >> defaultChain [
	^ '10-speed'
]

{ #category : #'default value' }
Parts >> defaultTireSize [
	^ self subclassResponsibility
]

{ #category : #initialization }
Parts >> initialize: aDict [
	chain := aDict at: #chain ifAbsent: self defaultChain.
	tireSize := aDict at: #tireSize ifAbsent: self defaultTireSize.
	self postInitialize: aDict.
	^ self
]

{ #category : #accessing }
Parts >> localSpares [
	^ Dictionary empty
]

{ #category : #initialization }
Parts >> postInitialize: aDict [
	^ nil
]

{ #category : #accessing }
Parts >> spares [
	| spares |
	spares := Dictionary newFromPairs: { #tireSize . tireSize . #chain . chain }.
	spares addAll: self localSpares.
	^ spares
]
