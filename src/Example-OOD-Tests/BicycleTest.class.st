Class {
	#name : #BicycleTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #accessing }
BicycleTest >> testDefaultChain [
	| bicycle |
	bicycle := Bicycle new.
	self assert: bicycle defaultChain equals: '10-speed'
]
