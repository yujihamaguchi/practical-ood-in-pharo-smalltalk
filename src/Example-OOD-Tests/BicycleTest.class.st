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
	bicycle initialize: (Dictionary newFromPairs: { #style . #road . #size . 'M' . #tapeColor . 'red' }).
	expected := Dictionary newFromPairs: { #chain . '10-speed' . #tapeColor . 'red' . #tireSize . '23' }.
	self assert: bicycle spares equals: expected.
	bicycle := Bicycle new.
	bicycle initialize: (Dictionary newFromPairs: { #style . #mountain . #size . 'S' . #frontShock . 'Manitou' . #rearShock . 'Fox' }).
	expected := Dictionary newFromPairs: { #tireSize . '2.1' . #chain . '10-speed' . #rearShock . 'Fox' }.
	self assert: bicycle spares equals: expected.
	
]
