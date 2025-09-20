Class {
	#name : 'East',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
East >> move: aPoint within: gridSize [

	(super canMove: aPoint within: gridSize )
		ifTrue: [ ^ aPoint x+1 @ aPoint y]
		ifFalse: [ ^ aPoint]

]

{ #category : 'comparing' }
East >> rotateLeft [
	^North new.
]

{ #category : 'as yet unclassified' }
East >> rotateRight [
	^ South new.
]
