Class {
	#name : 'LibraryTest',
	#superclass : 'TestCase',
	#instVars : [
		'lib',
		'book1',
		'book2',
		'member1',
		'member2'
	],
	#category : 'LibraryProject',
	#package : 'LibraryProject'
}

{ #category : 'running' }
LibraryTest >> setUp [

	lib := Library new.
	
	book1 := Book new.
	book1 title: 'Book 1'.
	book1 author: 'Author 1'.
	
	book2 := Book new.
	book2 title: 'Book 2'.
	book2 author: 'Author 2'.
	
	member1 := Member new.
	member1 id: 1.
	member1 name: 'Member 1'.
	
	member2 := Member new.
	member2 id: 2.
	member2 name: 'Member 2'
	

]

{ #category : 'running' }
LibraryTest >> testAddBook [

	lib addBook: book1.
	self assert: (lib books size) = 1.
]

{ #category : 'running' }
LibraryTest >> testAddMember [

	lib addMember: member1.
	self assert: (lib members size) = 1.
]

{ #category : 'running' }
LibraryTest >> testFindBook [

	lib addBook: book1.
	self assert: (lib findBook: 'Book 1') = book1.
]

{ #category : 'running' }
LibraryTest >> testFindBookNotFound [

    self assert: (lib findBook: 'Unknown') isNil.
]

{ #category : 'running' }
LibraryTest >> testFindMember [

	lib addMember: member1.
	self assert: (lib findMember: 'Member 1') = member1.
]

{ #category : 'running' }
LibraryTest >> testFindMemberNotFound [

    self assert: (lib findMember: 'Unknown') isNil.
]
