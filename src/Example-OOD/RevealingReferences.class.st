Class {
	#name : #RevealingReferences,
	#superclass : #Object,
	#instVars : [
		'wheels'
	],
	#category : #'Example-OOD'
}

{ #category : #'instance creation' }
RevealingReferences class >> data: aData [
	^ self basicNew setData: aData
]

{ #category : #calculating }
RevealingReferences >> diameters [
	^ wheels
		collect: [ :wheel | (wheel at: #rim) + ((wheel at: #tire) * 2) ]
]

{ #category : #private }
RevealingReferences >> setData: aData [
	wheels := aData
		collect: [ :cell | 
			{(#rim -> (cell at: 1)).
			(#tire -> (cell at: 2))} asDictionary ]
]
