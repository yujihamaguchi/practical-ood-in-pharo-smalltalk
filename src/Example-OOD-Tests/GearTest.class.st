Class {
	#name : #GearTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests'
}

{ #category : #tests }
GearTest >> testRatio [
	self
		assert: (Gear chainring: 52 cog: 11) ratio
		equals: 4.7272727272727275.
	self
		assert: (Gear chainring: 30 cog: 27) ratio
		equals: 1.1111111111111112
]
