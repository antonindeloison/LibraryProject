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

{ #category : 'comparing' }
South >> rotateLeft [
	^West new
]

{ #category : 'comparing' }
South >> rotateRight [
	^West new.
]
