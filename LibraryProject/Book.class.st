Class {
	#name : 'Book',
	#superclass : 'Object',
	#instVars : [
		'author',
		'title'
	],
	#category : 'LibraryProject',
	#package : 'LibraryProject'
}

{ #category : 'accessing' }
Book >> author [

	^ author
]

{ #category : 'accessing' }
Book >> author: String [

	author := String
]

{ #category : 'accessing' }
Book >> initialize [ 

	super initialize.
	title = ''.
	author = ''
]

{ #category : 'accessing' }
Book >> testInitializeIsOk [
	self assert: Die new faces equals: 6
]

{ #category : 'accessing' }
Book >> title [

	^ title
]

{ #category : 'accessing' }
Book >> title: String [

	title := String
]
