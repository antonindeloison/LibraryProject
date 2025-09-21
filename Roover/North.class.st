Class {
	#name : 'North',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
North >> move: aPoint within: gridSize [

	| newPoint |
	newPoint := aPoint x @ (aPoint y + 1).
	(super canMove: newPoint within: gridSize)
		ifTrue: [ ^ newPoint ]
		ifFalse: [ ^ aPoint ]
]

{ #category : 'accessing' }
North >> moveBack: aPoint within: gridSize [
    | newPoint |
    newPoint := aPoint x @ (aPoint y - 1).
    (super canMove: newPoint within: gridSize)
        ifTrue: [ ^ newPoint ]
        ifFalse: [ ^ aPoint ].

]

{ #category : 'as yet unclassified' }
North >> rotateLeft [
	^ West new
]

{ #category : 'as yet unclassified' }
North >> rotateRight [
	^East new.
]
