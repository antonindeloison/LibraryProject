Extension { #name : 'Integer' }

{ #category : '*Dice' }
Integer >> D10 [

	|handle|
	handle := DieHandle new.
	1 to: self do: [ :x | handle addDie: (Die withFaces: 10) ].
	^ handle
]

{ #category : '*Dice' }
Integer >> D20 [

	|handle|
	handle := DieHandle new.
	1 to: self do: [ :x | handle addDie: (Die withFaces: 20) ].
	^ handle
]
