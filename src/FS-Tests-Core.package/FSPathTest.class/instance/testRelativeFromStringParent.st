tests
testRelativeFromStringParent

	| path |
	
	path := FSPath from: '../..' delimiter: $/.
	
	self assert: path isRelative.
	self assert: path size equals: 2.
	self assert: (path at: 1) equals: '..'.
	self assert: (path at: 2) equals: '..'.