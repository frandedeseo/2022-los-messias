Class {
	#name : #Permanent,
	#superclass : #Object,
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
Permanent >> applyEffectOf: activeCard on: aCardManager [

	self assertIsYourTurn: activeCard ship.
	aCardManager addCardToTable: activeCard
]