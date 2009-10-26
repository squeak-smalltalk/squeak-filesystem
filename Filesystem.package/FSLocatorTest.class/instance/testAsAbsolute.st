compatibility tests
testAsAbsolute
	| locator |
	locator := FSLocator image.
	self assert: locator asAbsolute = locator