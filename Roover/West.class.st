Class {
	#name : 'West',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
West >> move: aPoint within: gridSize [

	| newPoint |
	newPoint := aPoint x - 1 @ aPoint y.
	(super canMove: newPoint within: gridSize)
		ifTrue: [ ^ newPoint ]
		ifFalse: [ ^ aPoint ]
]

{ #category : 'accessing' }
West >> moveBack: aPoint within: gridSize [

	| newPoint |
	newPoint := (aPoint x + 1) @ (aPoint y).
	(super canMove: newPoint within: gridSize)
		ifTrue: [ ^ newPoint ]
		ifFalse: [ ^ aPoint ]
]

{ #category : 'comparing' }
West >> rotateLeft [
	^ South new.
]

{ #category : 'comparing' }
West >> rotateRight [
	^North new.
]

{ #category : 'tests' }
West >> testRotateRight [

	| r |
	r := Roover new.
	r turnRight.

	self assert: r direction equals: East new
]
