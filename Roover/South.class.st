Class {
	#name : 'South',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
South >> move: aPoint within: gridSize [

	(super canMove: aPoint within: gridSize)
		ifTrue: [ ^ aPoint x @ (aPoint y-1) ]
		ifFalse: [ ^ aPoint ]
	
]

{ #category : 'accessing' }
South >> moveBack: aPoint within: gridSize [

	| newPoint |
	newPoint := aPoint x @ (aPoint y + 1).
	(super canMove: newPoint within: gridSize)
		ifTrue: [ ^ newPoint ]
		ifFalse: [ ^ aPoint ]
]

{ #category : 'comparing' }
South >> rotateLeft [
	^West new
]

{ #category : 'comparing' }
South >> rotateRight [
	^West new.
]
