Class {
	#name : 'Library',
	#superclass : 'Object',
	#instVars : [
		'members',
		'books'
	],
	#category : 'LibraryProject',
	#package : 'LibraryProject'
}

{ #category : 'adding' }
Library >> addBook: Book [

	books add: Book
]

{ #category : 'accessing' }
Library >> addMember: aMember [ 
	members add: aMember.
]

{ #category : 'accessing' }
Library >> books [

	^ books
]

{ #category : 'accessing' }
Library >> books: OrderedCollection [ 

	books := OrderedCollection 
]

{ #category : 'accessing' }
Library >> findBook: aString [ 
	^ books detect: [ :b | b title = aString ] ifNone: [ nil ].
]

{ #category : 'accessing' }
Library >> findMember: aString [ 
	
	^ members detect: [ :m | m name = aString ] ifNone: [ nil ].
]

{ #category : 'accessing' }
Library >> initialize [ 

	super initialize.
	members := OrderedCollection new.
	books := OrderedCollection new
]

{ #category : 'accessing' }
Library >> members [

	^ members
]

{ #category : 'accessing' }
Library >> members: OrderedCollection [ 

	members := OrderedCollection 
]
