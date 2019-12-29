Class {
	#name : #RevealingReferences,
	#superclass : #Object,
	#instVars : [
		'wheels'
	],
	#category : #'Example-OOD-work'
}

{ #category : #'instance creation' }
RevealingReferences class >> data: aData [
	^ self basicNew setData: aData
]

{ #category : #calculating }
RevealingReferences >> diameters [
	^ wheels collect: [ :wheel | wheel diameter ]
]

{ #category : #private }
RevealingReferences >> setData: aData [
	wheels := aData
		collect: [ :cell | Wheel rim: (cell at: 1) tire: (cell at: 2) ]
]
