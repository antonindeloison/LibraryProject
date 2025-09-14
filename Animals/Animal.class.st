Class {
	#name : 'Animal',
	#superclass : 'Object',
	#category : 'Animals',
	#package : 'Animals'
}

{ #category : 'as yet unclassified' }
Animal >> crier [
	^ self parler , ' !!!!'.
]

{ #category : 'as yet unclassified' }
Animal >> parler [

	^ 'Je suis un animal.'
]
