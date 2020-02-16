Class {
	#name : #GearTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests'
}

{ #category : #tests }
GearTest >> testGearInches [
	| wheel1 args1 gear1 wheel2 args2 gear2 |
	wheel1 := Wheel rim: 26 tire: 1.5.
	args1 := Dictionary newFrom: { #chainring->52 . #cog->11 . #wheel->wheel1 }.
	gear1 := Gear new setArgs: args1.
	wheel2 := Wheel rim: 24 tire: 1.25.
	args2 := Dictionary newFrom: { #wheel->wheel2 }.
	gear2 := Gear new setArgs: args2.
	self assert: gear1 gearInches equals: 137.0909090909091.
	self assert: gear2 gearInches equals: 125.27272727272728
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
