Class {
	#name : #Wheel,
	#superclass : #Object,
	#instVars : [
		'rim',
		'tire'
	],
	#category : #'Example-OOD-gear'
}

{ #category : #'instance creation' }
Wheel class >> rim: rimInteger tire: tireFloat [
	^ self basicNew setRim: rimInteger tire: tireFloat
]

{ #category : #calculating }
Wheel >> circumference [
	^ self diameter * Float pi
]

{ #category : #calculating }
Wheel >> diameter [
	^ rim + (tire * 2)
]

{ #category : #accessing }
Wheel >> rim [
	^ rim
]

{ #category : #private }
Wheel >> setRim: rimInteger tire: tireFloat [
	rim := rimInteger.
	tire := tireFloat.
	^ self
]

{ #category : #accessing }
Wheel >> tire [
	^ tire
]
