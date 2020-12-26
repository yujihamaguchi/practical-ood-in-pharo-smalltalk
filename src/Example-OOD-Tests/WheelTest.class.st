Class {
	#name : #WheelTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Gear'
}

{ #category : #tests }
WheelTest >> testDiameter [
	self assert: (Wheel rim: 26 tire: 1.5) diameter equals: 29.0

]
