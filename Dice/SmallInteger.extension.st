Extension { #name : 'SmallInteger' }

{ #category : '*Dice' }
SmallInteger >> D10 [

	|handle|
	handle := DieHandle new.
	1 to: self do: [ :x | handle addDie: (Die withFaces: 10) ].
	^ handle
]
