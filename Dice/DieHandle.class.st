Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice',
		'sum'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DieHandle >> + aDieHandle [ 
	|newHandle|
	newHandle := DieHandle new.
	dice do: [ :each | newHandle addDie: each ].
	aDieHandle dice do: [ :each | newHandle addDie: each ].
	^ newHandle 
	
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [

	dice add: aDie.
]

{ #category : 'adding' }
DieHandle >> dice [
	^ dice
]

{ #category : 'as yet unclassified' }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : 'initialization' }
DieHandle >> initialize [

	super initialize.
	sum := 0.
	dice := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
DieHandle >> roll [

	| sum |
	sum := 0.
	dice do: [ :each | sum := sum + each roll].
	^ sum
]

{ #category : 'tests' }
DieHandle >> testSumming [

	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle diceNumber equals: 5
]
