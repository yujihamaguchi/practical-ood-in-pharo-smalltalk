Class {
	#name : #GearTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Gear'
}

{ #category : #tests }
GearTest >> testGearInches [
	| wheel gear |
	wheel := Wheel rim: 26 tire: 1.5.
	gear := Gear new setChainring: 52 cog: 11 wheel: wheel.
	self assert: (gear gearInches) equals: 137.0909090909091
]
