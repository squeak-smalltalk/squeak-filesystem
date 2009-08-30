tests
testWorkingDirectoryParent
	| wd |
	wd := filesystem referenceTo: FSPath new.
	self assert: wd parent == wd