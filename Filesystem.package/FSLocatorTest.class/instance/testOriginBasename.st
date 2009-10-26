compatibility tests
testOriginBasename
	| locator |
	locator := FSLocator image.
	self assert: locator basename = (FSDiskFilesystem imageFile basename)