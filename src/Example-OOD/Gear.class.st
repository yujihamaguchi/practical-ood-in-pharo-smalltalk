Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog',
		'rim',
		'tire'
	],
	#category : #'Example-OOD-gear'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger [
	^ self basicNew setChainring: chainringInteger cog: cogInteger
]

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat [
	^ self basicNew
		setChainring: chainringInteger
		cog: cogInteger
		rim: rimInteger 
		tire: tireFloat 
]

{ #category : #calculating }
Gear >> gearInches [
	^ self ratio * (Wheel rim: rim tire: tire) diameter
]

{ #category : #calculating }
Gear >> ratio [
	^ chainring / cog asFloat
]

{ #category : #private }
Gear >> setChainring: chainringInteger cog: cogInteger [
	chainring := chainringInteger.
	cog := cogInteger.
	^ self
]

{ #category : #private }
Gear >> setChainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat [
	chainring := chainringInteger.
	cog := cogInteger.
	rim := rimInteger.
	tire := tireFloat.
	^ self
]
