Class {
	#name : #RecumbentBike,
	#superclass : #Bicycle,
	#instVars : [
		'flag'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
RecumbentBike >> defaultChain [
	^ '9-speed'
]

{ #category : #'default value' }
RecumbentBike >> defaultTireSize [
	^ '28'
]

{ #category : #accessing }
RecumbentBike >> localSpares [
	^ Dictionary newFromPairs: { #flag . flag }
]

{ #category : #initialization }
RecumbentBike >> postInitialize: aDict [
	flag := aDict at: #flag ifAbsent: nil.
	^ self
]
