Class {
	#name : #BicycleTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-FastFeet'
}

{ #category : #tests }
BicycleTest >> testSize [
	| bicycle dictionary size tapeColor |
	bicycle := Bicycle new.
	size := Association new; key: #size value: 'M'.
	tapeColor := Association new; key: #tapeColor value: 'red'.
	dictionary := Dictionary new.
	dictionary add: size.
	dictionary add: tapeColor.
	bicycle initialize: dictionary.
	self assert: bicycle size equals: 'M'
]

{ #category : #tests }
BicycleTest >> testSpares [
	| bicycle size tapeColor dictionary tireSize expected |
	bicycle := Bicycle new.
	size := Association new; key: #size value: 'M'.
	tapeColor := Association new; key: #tapeColor value: 'red'.
	dictionary := Dictionary new.
	dictionary add: size.
	dictionary add: tapeColor.
	bicycle initialize: dictionary.
	tireSize := Association new; key: #tireSize value: '23'.
	expected := Dictionary new.
	expected add: size.
	expected add: tapeColor.
	expected add: tireSize.
	self assert: bicycle spares equals: expected
]
