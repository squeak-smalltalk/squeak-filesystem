tests
testWorkingDirectoryParent
	| path |
	path := FSPath empty parent.
	self assert: path size = 1.
	self assert: (path at: 1) = '..'