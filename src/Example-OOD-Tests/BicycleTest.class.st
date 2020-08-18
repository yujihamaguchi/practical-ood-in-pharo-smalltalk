Class {
	#name : #BicycleTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
BicycleTest >> testSpares [
	| bicycle bicycleAttributes |
	bicycle := Bicycle new setSize: 'M' tapeColor: 'red'.
	bicycleAttributes := Dictionary new.
	bicycleAttributes
		at: #tireSize put: 23;
		at: #chain put: '10-speed';
		at: #tapeColor put: 'red'.
	self assert: bicycle spares equals: bicycleAttributes
]
