Class {
	#name : #SpeedUp,
	#superclass : #Object,
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
SpeedUp >> action: aShip on: aBoard [

	aBoard move: aShip by: 4.
]