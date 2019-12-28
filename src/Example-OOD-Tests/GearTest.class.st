Class {
	#name : #GearTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests'
}

{ #category : #tests }
GearTest >> testGearInches [
	self assert: (Gear chainring: 52 cog: 11 rim: 26 tire: 1.5) gearInches equals: 137.0909090909091.
	self assert: (Gear chainring: 52 cog: 11 rim: 24 tire: 1.25) gearInches equals: 125.27272727272728

]

{ #category : #tests }
GearTest >> testRatio [
	self
		assert: (Gear chainring: 52 cog: 11) ratio
		equals: 4.7272727272727275.
	self
		assert: (Gear chainring: 30 cog: 27) ratio
		equals: 1.1111111111111112
]
