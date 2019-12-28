Class {
	#name : #WheelTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests'
}

{ #category : #tests }
WheelTest >> testDiameter [
	self assert: (Wheel rim: 622 tire: 20) diameter equals: 662.
	self assert: (Wheel rim: 622 tire: 23) diameter equals: 668.
	self assert: (Wheel rim: 559 tire: 30) diameter equals: 619.
	self assert: (Wheel rim: 559 tire: 40) diameter equals: 639	

]
