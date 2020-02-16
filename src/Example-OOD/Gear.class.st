Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog',
		'wheel'
	],
	#category : #'Example-OOD-gear'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger [
	^ self basicNew setChainring: chainringInteger cog: cogInteger
]

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger wheel: aWheel [
	^ self basicNew
		setChainring: chainringInteger
		cog: cogInteger
		wheel: aWheel 
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

{ #category : #private }
Gear >> setChainring: chainringInteger cog: cogInteger wheel: aWheel [
	chainring := chainringInteger.
	cog := cogInteger.
	wheel := aWheel.
	^ self
]
