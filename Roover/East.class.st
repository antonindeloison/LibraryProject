Class {
	#name : 'East',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
East >> move: aPoint [ 
	^ aPoint x+1 @ aPoint y
]

{ #category : 'comparing' }
East >> rotateLeft [
	^North new.
]

{ #category : 'as yet unclassified' }
East >> rotateRight [
	^ South new.
]
