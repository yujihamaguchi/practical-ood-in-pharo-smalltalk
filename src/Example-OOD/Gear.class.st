Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog'
	],
	#category : #'Example-OOD-Gear'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger [
	^ self basicNew setChainring: chainringInteger cog: cogInteger
]

{ #category : #calculating }
Gear >> gearInches: diameterFloat [
	^ self ratio * diameterFloat
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
