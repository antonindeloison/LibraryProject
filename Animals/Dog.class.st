Class {
	#name : 'Dog',
	#superclass : 'Animal',
	#category : 'Animals',
	#package : 'Animals'
}

{ #category : 'as yet unclassified' }
Dog >> parler [
	
	^ 'Je suis ' , self nom , ' et je fais Woof.'.
]
