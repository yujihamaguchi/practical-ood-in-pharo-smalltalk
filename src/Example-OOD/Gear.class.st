Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog',
		'wheel'
	],
	#category : #'Example-OOD'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat [
	^ self basicNew setChainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat .
]

{ #category : #calculating }
Gear >> gearInches [
	^ self ratio * wheel diameter 
]

{ #category : #calculating }
Gear >> ratio [
	^ chainring / cog asFloat
]

{ #category : #private }
Gear >> setChainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat [
	chainring := chainringInteger.
	cog := cogInteger.
	wheel := Wheel rim: rimInteger tire: tireFloat .
	^ self
]
