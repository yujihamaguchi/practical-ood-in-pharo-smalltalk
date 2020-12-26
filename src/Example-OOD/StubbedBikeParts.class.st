Class {
	#name : #StubbedBikeParts,
	#superclass : #Parts,
	#type : #variable,
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'default value' }
StubbedBikeParts >> defaultTireSize [
	^ 0
]

{ #category : #accessing }
StubbedBikeParts >> localSpares [
	^ Dictionary newFromPairs: {#saddle . 'painful'}
]
