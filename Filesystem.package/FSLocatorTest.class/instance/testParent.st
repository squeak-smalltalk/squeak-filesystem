compatibility tests
testParent
	locator := FSLocator image.
	self assert: locator parent resolve = FSDiskFilesystem imageDirectory