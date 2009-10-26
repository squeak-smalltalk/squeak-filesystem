tests
testDoesntContainReferenceFilesystem
	| ref other |
	ref := filesystem referenceTo: (FSPath with: 'griffle').
	other := FSMemoryFilesystem new referenceTo: 'griffle/nurp'.
	self deny: (ref contains: other)