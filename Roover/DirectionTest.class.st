Class {
	#name : 'DirectionTest',
	#superclass : 'TestCase',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'tests' }
DirectionTest >> testCanMove [

	self assert: (North new canMove: 4@1 within: 3@3) equals: false
]

{ #category : 'moveTest' }
DirectionTest >> testEastMove [

	self assert: (East new move: 3 @ 0 within: 3 @ 3) equals: 3 @ 0
]

{ #category : 'tests' }
DirectionTest >> testEastMoveBack [

	self assert: (East new moveBack: 2 @ 1 within: 3 @ 3) equals: 1 @ 1
]

{ #category : 'tests' }
DirectionTest >> testEastTurnLeft [

	self assert: East new rotateLeft equals: North new
]

{ #category : 'tests' }
DirectionTest >> testEastTurnRight [

	self assert: East new rotateRight equals: South new
]

{ #category : 'moveTest' }
DirectionTest >> testNorthMove [

	self assert: (North new move: 1 @ 2 within: 3 @ 3) equals: 1 @ 3
]

{ #category : 'tests' }
DirectionTest >> testNorthMoveBack [

	self assert: (North new moveBack: 1 @ 2 within: 3@3) equals: 1 @ 1
]

{ #category : 'tests' }
DirectionTest >> testNorthTurnLeft [

	self assert: North new rotateLeft equals: West new
]

{ #category : 'tests' }
DirectionTest >> testNorthTurnRight [

	self assert: North new rotateRight equals: East new
]

{ #category : 'moveTest' }
DirectionTest >> testSouthMove [

	self assert: (South new move: 1 @ 1 within: 3 @ 3) equals: 1 @ 1
]

{ #category : 'tests' }
DirectionTest >> testSouthMoveBack [

	self assert: (South new moveBack: 1 @ 2 within: 3 @ 3) equals: 1 @ 3
]

{ #category : 'tests' }
DirectionTest >> testSouthTurnLeft [

	self assert: South new rotateLeft equals: West new
]

{ #category : 'tests' }
DirectionTest >> testSouthTurnRight [

	self assert: South new rotateRight equals: West new
]

{ #category : 'tests' }
DirectionTest >> testTurnLeft [
	self assert: North new rotateLeft equals: West new
]

{ #category : 'tests' }
DirectionTest >> testTurnRight [

	self assert: North new rotateRight equals: East new
]

{ #category : 'moveTest' }
DirectionTest >> testWestMove [

	self assert: (West new move: 1 @ 1 within: 3 @ 3) equals: 1 @ 1
]

{ #category : 'tests' }
DirectionTest >> testWestMoveBack [

	self assert: (West new moveBack: 2 @ 1 within: 3 @ 3) equals: 3 @ 1
]

{ #category : 'tests' }
DirectionTest >> testWestTurnRight [

	self assert: West new rotateRight equals: North new
]

{ #category : 'tests' }
DirectionTest >> testWestTurnleft [

	self assert: West new rotateLeft equals: South new
]
