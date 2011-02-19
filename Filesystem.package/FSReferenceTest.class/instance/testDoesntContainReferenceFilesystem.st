tests
testDoesntContainReferenceFilesystem
	| ref other |
	ref := filesystem referenceTo: (FSPath with: 'griffle').
	other := FSFilesystem inMemory referenceTo: 'griffle/nurp'.
	self deny: (ref contains: other)