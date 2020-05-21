Class {
	#name : #Wheel,
	#superclass : #Object,
	#instVars : [
		'rim',
		'tire',
		'gear'
	],
	#category : #'Example-OOD-Gear'
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

{ #category : #calculating }
Wheel >> gearInches [
	^ gear ratio * self diameter
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

{ #category : #initialization }
Wheel >> setRim: rimInteger tire: tireFloat chainring: chainringInteger cog: cogInteger [
	rim := rimInteger .
	tire := tireFloat .
	gear := Gear chainring: chainringInteger cog: cogInteger .
	^ self 
]

{ #category : #accessing }
Wheel >> tire [
	^ tire
]
