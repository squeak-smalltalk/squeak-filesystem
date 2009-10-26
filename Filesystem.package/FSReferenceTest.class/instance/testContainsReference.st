tests
testContainsReference
	| ref |
	ref := filesystem referenceTo: (FSPath with: 'griffle').
	self assert: (ref contains: ref / 'nurp')