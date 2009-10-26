tests
testDoesntContainReferencePath
	| ref other |
	ref := filesystem referenceTo: (FSPath with: 'griffle').
	other := filesystem referenceTo: (FSPath with: 'nurp').
	self deny: (ref contains: other)