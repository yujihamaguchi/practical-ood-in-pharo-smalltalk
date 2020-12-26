Class {
	#name : #Parts,
	#superclass : #Object,
	#type : #variable,
	#instVars : [
		'parts'
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
Parts >> initialize: theParts [
	parts := theParts.
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
Parts >> size [ 
	^ parts size
]

{ #category : #accessing }
Parts >> spares [
	^ parts select: [ :part | part needsSpare ]

]
