Class {
	#name : #GearTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Gear'
}

{ #category : #tests }
GearTest >> testGearInches [
	| gear |
	gear := Gear new setChainring: 52 cog: 11.
	self assert: (gear gearInches: 29) equals: 137.0909090909091.
	self assert: (gear gearInches: 26.5) equals: 125.27272727272728
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
