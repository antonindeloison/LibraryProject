Class {
	#name : 'RooverTest',
	#superclass : 'TestCase',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'tests' }
RooverTest >> testDefaultRooverDirectionIsNorth [

	| r |
	r := Roover new.
	self assert: r direction equals: North new
]

{ #category : 'tests' }
RooverTest >> testDefaultRooverPositionIsAtZeroZero [

	| r |
	r := Roover new.
	self assert: r x equals: 0.
	self assert: r y equals: 0.
]

{ #category : 'tests' }
RooverTest >> testFullInterpret [

	| r |
	r := Roover new.
	r interpretFullCommand: '5 5
1 2 N 
RMRM'.

	self assert: r x equals: 2.
	self assert: r y equals: 1.
	self assert: r direction equals: South new
]

{ #category : 'tests' }
RooverTest >> testGridSize [

	| r |
	r := Roover new.
	r interpretCommand: '5 5
1 2 N 
LMLM'.
	self assert: r gridSize equals: 6@6
]

{ #category : 'tests' }
RooverTest >> testInitialize [ 
		
	| r |
	r := Roover new.
	r interpretInit: '1 2 E'.
	
	self assert: r x equals: 1.
	self assert: r x equals: 1.
	self assert: r direction equals: East new.
	
]

{ #category : 'tests' }
RooverTest >> testInterpretDirection [

	| r |
	r := Roover new.
	r interpretDirection: 'MMRMM'.

	self assert: r x equals: 2.
	self assert: r y equals: 2.
	self assert: r direction equals: East new
]

{ #category : 'tests' }
RooverTest >> testMove [
| r |
r:= Roover new.
r move.
self assert: r x equals: 0


]

{ #category : 'tests' }
RooverTest >> testRotateLeft [
|r|
 r := Roover new.
r turnLeft.

self assert: r direction equals: West new.

]

{ #category : 'tests' }
RooverTest >> testRotateRight [

	| r |
	r := Roover new.
	r turnRight.

	self assert: r direction equals: East new
]

{ #category : 'tests' }
RooverTest >> testSplitInput [

	| splits |
	splits := ('5 5
1 2 N
LMLM' splitOn: Character cr).

	self assert: splits size equals: 3.
	self assert: splits first equals: '5 5'
]
