Class {
	#name : #Part,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'needsSpare'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #initialization }
Part >> initialize: aDict [
	name := aDict at: #name ifAbsent: nil.
	description := aDict at: #description ifAbsent: nil.
	needsSpare := aDict at: #needsSpare ifAbsent: true.
	^ self
]

{ #category : #accessing }
Part >> needsSpare [
	^ needsSpare 
]
