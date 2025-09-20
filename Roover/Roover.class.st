Class {
	#name : 'Roover',
	#superclass : 'Object',
	#instVars : [
		'x',
		'y',
		'direction',
		'gridSize'
	],
	#category : 'Roover',
	#package : 'Roover'
}

{ #category : 'accessing' }
Roover >> direction [
	^ direction
]

{ #category : 'accessing' }
Roover >> direction: aWest [ 
	direction := aWest
]

{ #category : 'accessing' }
Roover >> gridSize [
	^ gridSize
]

{ #category : 'accessing' }
Roover >> gridSize: aPoint [ 
	gridSize := aPoint
]

{ #category : 'initialization' }
Roover >> initialize [

	super initialize.
	direction := North new.
	x := 1.
	y := 1
]

{ #category : 'accessing' }
Roover >> interpretCommand: aString [ 
	| input grid |
	input := aString splitOn: Character cr.
	grid := input first splitOn: Character space.
	self gridSize: grid first asInteger @
	grid second asInteger.
	
		
	
]

{ #category : 'accessing' }
Roover >> interpretDirection: aString [

	
	aString do: [ :c |
			c = $R
				ifTrue: [ self turnRight ]
				ifFalse: [
						c = $L
							ifTrue: [ self turnLeft ]
							ifFalse: [ self move ] ] ]
]

{ #category : 'accessing' }
Roover >> interpretFullCommand: aString [

	| temp |
	temp := aString splitOn: Character cr.

	self interpretCommand: temp first.

	self interpretInit: temp second.
	self interpretDirection: temp third
]

{ #category : 'accessing' }
Roover >> interpretInit: aString [ 
	| cmd |
	cmd:=aString splitOn: Character space.
	x:=cmd first asInteger.
	y:=cmd second asInteger.
	direction:= Direction fromChar: cmd third 
]

{ #category : 'accessing' }
Roover >> move [
	| p |
	p:= self direction move: x@y.
	x:= p x.
	y:= p y.
	
]

{ #category : 'as yet unclassified' }
Roover >> turnLeft [
	self direction: self direction rotateLeft
]

{ #category : 'accessing' }
Roover >> turnRight [
	self direction: self direction rotateRight .
]

{ #category : 'accessing - structure variables' }
Roover >> x [
	^ x
]

{ #category : 'accessing - structure variables' }
Roover >> y [ 

	^ y
]
