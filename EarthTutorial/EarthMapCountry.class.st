Class {
	#name : 'EarthMapCountry',
	#superclass : 'Object',
	#instVars : [
		'svgPath',
		'name',
		'code'
	],
	#category : 'EarthTutorial',
	#package : 'EarthTutorial'
}

{ #category : 'instance creation' }
EarthMapCountry >> asRSShape [
	^ RSSVGPath new svgPath: svgPath
]

{ #category : 'as yet unclassified' }
EarthMapCountry >> code [
	^ code
]

{ #category : 'instance creation' }
EarthMapCountry >> fromXML: aXMLElement [
	svgPath := aXMLElement attributeAt: 'd'.
	name := aXMLElement attributeAt: 'title'.
	code := aXMLElement attributeAt: 'id'.
]

{ #category : 'as yet unclassified' }
EarthMapCountry >> inspectorShape: aBuilder [

	<inspectorPresentationOrder: 0 title: 'Shape'>
	| canvas |
	canvas := RSCanvas new.
	canvas add: self asRSShape.
	canvas @ RSCanvasController.
	^ SpRoassalInspectorPresenter new
		  canvas: canvas;
		  yourself
]

{ #category : 'as yet unclassified' }
EarthMapCountry >> name [
	^ name
]

{ #category : 'printing' }
EarthMapCountry >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ' , name
]
