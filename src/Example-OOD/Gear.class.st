Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog',
		'rim',
		'tire'
	],
	#category : #'Example-OOD'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat [
	^ self basicNew setChainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat .
]

{ #category : #calculating }
Gear >> gearInches [
	^ self ratio * (rim + (tire * 2))
]

{ #category : #calculating }
Gear >> ratio [
	^ chainring / cog asFloat
]

{ #category : #private }
Gear >> setChainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat [
	chainring := chainringInteger.
	cog := cogInteger.
	rim := rimInteger .
	tire := tireFloat .
	^ self
]
