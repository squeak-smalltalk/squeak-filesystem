compatibility tests
testSlash
	| locator |
	locator := FSLocator image / 'griffle'.
	self assert: locator = (FSLocator image / 'griffle')