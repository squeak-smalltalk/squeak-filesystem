tests
testContainsLocator
	| ref |
	ref := FSDiskFilesystem imageDirectory parent.
	self assert: (ref contains: FSLocator image)