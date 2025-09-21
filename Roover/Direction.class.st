Class {
	#name : 'Direction',
	#superclass : 'Object',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'instance creation' }
Direction class >> fromChar: aString [ 
	aString = 'E' ifTrue: [ ^ East new ].
	aString = 'N' ifTrue: [ ^ North new ].
	aString = 'W' ifTrue: [ ^ West new ].
	aString = 'S' ifTrue: [ ^ South new ].
]

{ #category : 'comparing' }
Direction >> = arg [
		
	^self class name = arg class name 
]

{ #category : 'testing' }
Direction >> canMove: newPoint within: gridSize [

	^ (newPoint x between: 1 and: gridSize x) and: [
		  newPoint y between: 1 and: gridSize y ]
]
