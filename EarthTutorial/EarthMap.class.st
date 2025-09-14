Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'EarthTutorial',
	#package : 'EarthTutorial'
}

{ #category : 'as yet unclassified' }
EarthMap >> countries [
	^ countries
]

{ #category : 'as yet unclassified' }
EarthMap >> importCountriesFrom: aFileReference [
    | doc |
    doc := self xmlTreeFromFile: aFileReference.
    (doc nodes first nodes select: [ :node | node isKindOf: XMLElement ])
        do: [ :node | self importCountryFromXMLNode: node ]
]

{ #category : 'as yet unclassified' }
EarthMap >> importCountryFromXMLNode: aXMLElement [
countries add: (EarthMapCountry new fromXML: aXMLElement)
]

{ #category : 'initialization' }
EarthMap >> initialize [

	super initialize.
	countries := OrderedCollection new
]

{ #category : 'as yet unclassified' }
EarthMap >> openPopulatedCanvas [

	self populatedCanvas open
]

{ #category : 'as yet unclassified' }
EarthMap >> populatedCanvas [

	^ RSCanvas new
		  addAll: (countries collect: [ :countr | countr asRSShape ]);
		  @ RSCanvasController;
		  yourself
]

{ #category : 'as yet unclassified' }
EarthMap >> xmlTreeFromFile: aFileName [

	^ aFileName asFileReference readStreamDo: [ :stream |
		  (XMLDOMParser parse: stream) document ]
]
