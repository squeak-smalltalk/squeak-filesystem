compatibility tests
testOriginBasename
	locator := FSLocator image.
	self assert: locator basename = (FSDiskFilesystem imageFile basename)