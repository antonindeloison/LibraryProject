Class {
	#name : 'North',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
North >> move: aPoint within: gridSize [

	(super canMove: aPoint within: gridSize)
		ifTrue: [ ^ aPoint x @ (aPoint y + 1) ]
		ifFalse: [ ^ aPoint ]

]

{ #category : 'as yet unclassified' }
North >> rotateLeft [
	^ West new
]

{ #category : 'as yet unclassified' }
North >> rotateRight [
	^East new.
]
