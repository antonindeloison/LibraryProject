"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestDice',
	#superclass : 'PackageManifest',
	#category : 'Dice-Manifest',
	#package : 'Dice',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestDice class >> ruleUnclassifiedMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Die #withFaces: #false)) #'2025-09-12T09:52:43.303851+02:00') )
]
