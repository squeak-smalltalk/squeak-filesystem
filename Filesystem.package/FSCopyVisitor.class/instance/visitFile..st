as yet unclassified
visitFile: aReference
	aReference = source
		ifTrue: [source copyTo: dest]
		ifFalse: [self copyFile: aReference]