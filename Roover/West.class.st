Class {
	#name : 'West',
	#superclass : 'Direction',
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
West >> move: aPoint [ 
	^aPoint x-1 @ aPoint y
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
