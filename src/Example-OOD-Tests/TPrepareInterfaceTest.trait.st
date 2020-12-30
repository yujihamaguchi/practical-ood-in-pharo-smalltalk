Trait {
	#name : #TPrepareInterfaceTest,
	#category : #'Example-OOD-Tests-Trip'
}

{ #category : #'as yet unclassified' }
TPrepareInterfaceTest >> targetObject [
	^ SubclassResponsibility 
]

{ #category : #tests }
TPrepareInterfaceTest >> testImplementsThePreparerInterface [
	self assert: (self targetObject respondsTo: #prepareTrip:) equals: true.
]
