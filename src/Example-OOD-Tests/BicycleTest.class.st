Class {
	#name : #BicycleTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
BicycleTest >> testSize [ 
	| mountainBicycle |
	mountainBicycle := MountainBicycle new setSize: 'S' frontShock: 'Manitou' rearShock: 'Fox'.
	self assert: mountainBicycle size equals: 'S' 
]

{ #category : #tests }
BicycleTest >> testSpares [
	| bicycle bicycleAttributes mountainBicycle mountainBicycleAttributes |
	bicycle := Bicycle new setSize: 'M' tapeColor: 'red'.
	bicycleAttributes := Dictionary new.
	bicycleAttributes
		at: #tireSize put: 23;
		at: #chain put: '10-speed';
		at: #tapeColor put: 'red'.
	self assert: bicycle spares equals: bicycleAttributes.
	mountainBicycle := MountainBicycle new
		setSize: 'S'
		frontShock: 'Manitou'
		rearShock: 'Fox'.
	mountainBicycleAttributes := Dictionary new.
	mountainBicycleAttributes
		at: #tireSize put: 23;
		at: #chain put: '10-speed';
		at: #tapeColor put: nil;
		at: #frontShock put: 'Manitou';
		at: #rearShock put: 'Fox'.
	self assert: mountainBicycle spares equals: mountainBicycleAttributes
]
