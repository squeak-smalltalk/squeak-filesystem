tests
testRelativeFromString

	| path |
	
	path := FSPath from: 'plonk/griffle' delimiter: $/.
	
	self assert: path isRelative.
	self assert: path size equals: 2.
	self assert: (path at: 1) equals: 'plonk'.
	self assert: (path at: 2) equals: 'griffle'.