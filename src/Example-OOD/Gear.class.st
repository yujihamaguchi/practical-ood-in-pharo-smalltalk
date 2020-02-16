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

{ #category : #calculating }
Gear >> diameter [ 
	^ wheel diameter 
]

{ #category : #calculating }
Gear >> gearInches [
	^ self ratio * self diameter
]

{ #category : #calculating }
Gear >> ratio [
	^ chainring / cog asFloat
]

{ #category : #initialization }
Gear >> setArgs: args [
	chainring := args at: #chainring ifAbsent: 52.
	cog := args at: #cog ifAbsent: 11.
	wheel := args at: #wheel.
	^ self
]

{ #category : #private }
Gear >> setChainring: chainringInteger cog: cogInteger [
	chainring := chainringInteger.
	cog := cogInteger.
	^ self
]
