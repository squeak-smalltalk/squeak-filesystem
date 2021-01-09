tests
testRelativeFromStringNormalization

	| path |
	
	path := FSPath from: 'plonk/../griffle' delimiter: $/.
	
	self assert: path isRelative.
	self assert: path size equals: 1.
	self assert: (path at: 1) equals: 'griffle'.