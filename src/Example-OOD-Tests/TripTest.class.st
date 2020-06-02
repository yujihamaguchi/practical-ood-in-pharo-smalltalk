Class {
	#name : #TripTest,
	#superclass : #TestCase,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #tests }
TripTest >> testPrepare [
	| trip preparers preparer1 preparer2 |
	trip := Trip new.
	preparer1 := Mock new.
	preparer2 := Mock new.
	preparers := { preparer1 . preparer2 }.
	trip prepare: preparers.
	(preparer1 should receive prepareTrip: trip) once.
	(preparer2 should receive prepareTrip: trip) once.

]
