Class {
	#name : 'South',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
South >> move: aPoint [ 
	^aPoint x @ (aPoint y-1)
]

{ #category : 'comparing' }
South >> rotateLeft [
	^West new
]

{ #category : 'comparing' }
South >> rotateRight [
	^West new.
]
