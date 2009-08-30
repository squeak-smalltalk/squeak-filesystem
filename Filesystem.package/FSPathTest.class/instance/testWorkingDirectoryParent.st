tests
testWorkingDirectoryParent
	| wd |
	wd := FSPath new.
	self assert: wd parent == wd