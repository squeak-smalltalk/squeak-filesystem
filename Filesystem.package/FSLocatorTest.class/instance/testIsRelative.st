compatibility tests
testIsRelative
	| locator |
	locator := FSLocator image.
	self deny: locator isRelative