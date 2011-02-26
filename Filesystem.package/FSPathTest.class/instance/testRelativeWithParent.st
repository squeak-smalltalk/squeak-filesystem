tests
testRelativeWithParent
	| path |
	path := FSPath parent / 'foo'.
	self assert: (path printWithDelimiter: $/) = '../foo'