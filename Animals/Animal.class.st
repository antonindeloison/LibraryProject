Class {
	#name : 'Animal',
	#superclass : 'Object',
	#instVars : [
		'nom'
	],
	#category : 'Animals',
	#package : 'Animals'
}

{ #category : 'as yet unclassified' }
Animal >> crier [
	^ self parler , ' !!!!'.
]

{ #category : 'accessing' }
Animal >> nom [
	^ nom.
]

{ #category : 'accessing' }
Animal >> nom: aString [
	nom := aString.
]

{ #category : 'as yet unclassified' }
Animal >> parler [

	^ 'Je suis un animal.'
]
