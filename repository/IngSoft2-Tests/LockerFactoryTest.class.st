Class {
	#name : #LockerFactoryTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #tests }
LockerFactoryTest >> testLockerFactoryGeneratesABoardStructure [

	| boardStructure |
	boardStructure := LockerFactory new generatesWith: 10 and: 100 played: 3.

	self assert: boardStructure lockers size equals: 10.
	self assert: boardStructure laps equals: 3.
	self assert: boardStructure parsecs equals: 100.
]

{ #category : #tests }
LockerFactoryTest >> testLockerFactoryGeneratesACollectionOfDifferentLockers [

	| lockers boardStructure |
	boardStructure := LockerFactory new
		                  generatesWith: 1000
		                  and: 10000
		                  played: 3.
	lockers := boardStructure lockers.

	self assert:
		(lockers anySatisfy: [ :aLocker | aLocker isMemberOf: AtomicBomb ]).

	self assert:
		(lockers anySatisfy: [ :aLocker | aLocker isMemberOf: AtomicBomb ]).

	self assert:
		(lockers anySatisfy: [ :aLocker | aLocker isMemberOf: HyperJump ]).

	self assert:
		(lockers anySatisfy: [ :aLocker | aLocker isMemberOf: MoonWalk ]).

	self assert:
		(lockers anySatisfy: [ :aLocker | aLocker isMemberOf: SpeedUp ]).

	self assert:
		(lockers anySatisfy: [ :aLocker | aLocker isMemberOf: WormHole ])
]

{ #category : #tests }
LockerFactoryTest >> testLockerFactoryGeneratesACollectionOfSizeTen [

	| lockers boardStructure |
	boardStructure := LockerFactory new
		                  generatesWith: 10
		                  and: 100
		                  played: 3.
	lockers := boardStructure lockers.

	self assert: lockers size equals: 10
]