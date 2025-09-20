Class {
	#name : 'North',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
North >> move: aPoint [

	^ aPoint x @ (aPoint y + 1)
]

{ #category : 'as yet unclassified' }
North >> rotateLeft [
	^ West new
]

{ #category : 'as yet unclassified' }
North >> rotateRight [
	^East new.
]
