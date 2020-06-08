Class {
	#name : #BicycleTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
BicycleTest >> testSpares [
	| bicycle |
	bicycle := Bicycle new setSize: 'M' tapeColor: 'red'.
	self
		assert: bicycle spares
		equals:
			(Dictionary new
				at: #tireSize put: 23;
				at: #chain put: '10-speed';
				at: #tapeColor put: 'red')
]
