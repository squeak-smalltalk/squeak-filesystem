as yet unclassified
visitDirectory: aReference
	aReference = source
		ifTrue: [dest ensureDirectory]
		ifFalse: [self copyDirectory: aReference]