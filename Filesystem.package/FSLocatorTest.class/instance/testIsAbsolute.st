compatibility tests
testIsAbsolute
	| locator |
	locator := FSLocator image.
	self assert: locator isAbsolute