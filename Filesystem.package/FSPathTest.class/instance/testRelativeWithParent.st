tests
testRelativeWithParent
	| path |
	path := FSPath withAll: #('..' 'foo').
	self assert: (path printWithDelimiter: $/) = '../foo'