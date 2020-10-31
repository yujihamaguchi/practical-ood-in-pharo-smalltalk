Class {
	#name : #Bicycle,
	#superclass : #Object,
	#instVars : [
		'schedule',
		'size',
		'chain',
		'tireSize'
	],
	#category : #'Example-OOD-FastFeet'
}

{ #category : #accessing }
Bicycle >> chain [
	^ chain
]

{ #category : #'default value' }
Bicycle >> defaultChain [
	^ '10-speed'
]

{ #category : #'default value' }
Bicycle >> defaultTireSize [
	^ self subclassResponsibility 
]

{ #category : #initialization }
Bicycle >> initialize: aDict [
	schedule := aDict at: #schedule ifAbsent: BicycleSchedule new.
	size := aDict at: #size ifAbsent: nil.
	chain := aDict at: #chain ifAbsent: self defaultChain.
	tireSize := aDict at: #tireSize ifAbsent: self defaultTireSize.
	self postInitialize: aDict.
	^ self
]

{ #category : #testing }
Bicycle >> isSchedulableFrom: startDate to: endDate [
	^ (self isScheduledFrom: (startDate addDays: ((self leadDays) negated)) to: endDate) not.
]

{ #category : #testing }
Bicycle >> isScheduledFrom: startDate to: endDate [
	^ schedule isScheduled: self from: startDate to: endDate
]

{ #category : #'default value' }
Bicycle >> leadDays [
	^ self subclassResponsibility 
]

{ #category : #accessing }
Bicycle >> localSpares [
	^ Dictionary empty
]

{ #category : #initialization }
Bicycle >> postInitialize: aDict [
	^ nil
]

{ #category : #accessing }
Bicycle >> size [ 
	^ size
]

{ #category : #accessing }
Bicycle >> spares [
	| spares |
	spares := Dictionary newFromPairs: { #tireSize . tireSize . #chain . chain }.
	spares addAll: self localSpares.
	^ spares
]

{ #category : #accessing }
Bicycle >> tireSize [
	^ tireSize
]
