compatibility tests
testContainsPath
	locator := FSLocator image.
	self assert: (locator contains: (locator resolve / 'griffle') path).