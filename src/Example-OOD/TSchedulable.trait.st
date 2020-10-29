Trait {
	#name : #TSchedulable,
	#category : #'Example-OOD-FastFeet'
}

{ #category : #testing }
TSchedulable >> isSchedulableFrom: startDate to: endDate in: aSchedule [
	^ (self isScheduledFrom: (startDate addDays: ((self leadDays) negated)) to: endDate in: aSchedule) not.
]

{ #category : #testing }
TSchedulable >> isScheduledFrom: startDate to: endDate in: aSchedule [
	^ aSchedule isScheduled: self from: startDate to: endDate
]

{ #category : #'default value' }
TSchedulable >> leadDays [
	^ 0
]
