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
	self assert: (East new move: 0@0 within: 3@3) equals: 1@0.
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
	self assert: (North new move: 0@0 within: 3@3) equals: 0@1.
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

	self assert: (South new move: 0 @ 0 within: 3@3) equals: 0 @ -1
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

	self assert: (West new move: 0 @ 0 within: 3@3) equals: -1 @ 0
]

{ #category : 'tests' }
DirectionTest >> testWestTurnRight [

	self assert: West new rotateRight equals: North new
]

{ #category : 'tests' }
DirectionTest >> testWestTurnleft [

	self assert: West new rotateLeft equals: South new
]
