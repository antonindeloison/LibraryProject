Class {
	#name : 'Member',
	#superclass : 'Object',
	#instVars : [
		'id',
		'name'
	],
	#category : 'LibraryProject',
	#package : 'LibraryProject'
}

{ #category : 'accessing' }
Member >> id [
	^ id
]

{ #category : 'accessing' }
Member >> id: anInterger [
	id := anInterger 
]

{ #category : 'accessing' }
Member >> initialize [ 
	super initialize.
	id := 0.
	name := ''.
	
]

{ #category : 'accessing' }
Member >> name [
	^ name
]

{ #category : 'accessing' }
Member >> name: String [
	name := String
]
