Class {
	#name : #PartsFactory,
	#superclass : #Object,
	#category : #'Example-OOD-FastFeet'
}

{ #category : #'as yet unclassified' }
PartsFactory class >> build: aPartsClass with: aPartClass by: config [
	| parts |
	parts := config collect: [ :partConfig | aPartClass new initialize: (Dictionary newFromPairs: {#name . partConfig at: 1 . #description . partConfig at: 2 . #needsSpare . partConfig at: 3 ifAbsent: true}) ].
	^ aPartsClass new initialize: parts.
]
