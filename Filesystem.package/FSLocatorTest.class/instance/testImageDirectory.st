resolution tests
testImageDirectory
	| locator |
	locator := FSLocator image. 
	self assert: locator resolve = FSDiskFilesystem imageFile