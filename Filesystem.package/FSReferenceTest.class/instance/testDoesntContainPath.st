tests
testDoesntContainPath
	| ref |
	ref := filesystem referenceTo: (FSPath with: 'griffle').
	self deny: (ref contains: (FSPath with: 'nurp'))