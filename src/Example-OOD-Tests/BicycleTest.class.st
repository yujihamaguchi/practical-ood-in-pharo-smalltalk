Class {
	#name : #BicycleTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
BicycleTest >> testSize [
	| bicycle |
	bicycle := Bicycle new.
	bicycle initialize: (Dictionary newFromPairs: { #size . 'M' . #tapeColor . 'red' }).
	self assert: bicycle size equals: 'M'
]

{ #category : #tests }
BicycleTest >> testSpares [
	| bicycle expected |
	bicycle := Bicycle new.
	bicycle initialize: (Dictionary newFromPairs: { #size . 'M' . #tapeColor . 'red' }).
	expected := Dictionary newFromPairs: { #size . 'M' . #tapeColor . 'red' . #tireSize . '23' }.
	self assert: bicycle spares equals: expected
]
