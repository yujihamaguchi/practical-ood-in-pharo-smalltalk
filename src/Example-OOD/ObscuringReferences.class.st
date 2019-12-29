Class {
	#name : #ObscuringReferences,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'Example-OOD-work'
}

{ #category : #'instance creation' }
ObscuringReferences class >> data: aData [
	^ self basicNew setData: aData
]

{ #category : #private }
ObscuringReferences >> data [
	^ data
]

{ #category : #calculating }
ObscuringReferences >> diameters [
	^ self data collect: [ :cell | (cell at: 1) + ((cell at: 2) * 2) ]
]

{ #category : #private }
ObscuringReferences >> setData: aData [
	data := aData.
	^ self
]
