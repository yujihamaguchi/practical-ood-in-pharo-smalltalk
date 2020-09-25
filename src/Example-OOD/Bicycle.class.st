Class {
	#name : #Bicycle,
	#superclass : #Object,
	#instVars : [
		'size',
		'tapeColor',
		'style',
		'frontShock',
		'rearShock'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #initialization }
Bicycle >> initialize: aDict [
	style := aDict at: #style ifAbsent: nil.
	size := aDict at: #size.
	tapeColor := aDict at: #tapeColor ifAbsent: nil.
	frontShock := aDict at: #frontShock ifAbsent: nil.
	rearShock := aDict at: #rearShock ifAbsent: nil.
	^ self
]

{ #category : #accessing }
Bicycle >> size [ 
	^ size
]

{ #category : #accessing }
Bicycle >> spares [
	(style = #road) 
		ifTrue: [ ^ Dictionary newFromPairs: { #chain . '10-speed' . #tireSize . '23' . #tapeColor . tapeColor } ]
		ifFalse: [ ^ Dictionary newFromPairs: { #chain . '10-speed' . #tireSize . '2.1' . #rearShock . rearShock  } ] 
	
]
