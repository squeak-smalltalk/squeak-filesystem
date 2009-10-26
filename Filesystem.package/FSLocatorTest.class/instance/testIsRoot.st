compatibility tests
testIsRoot
	locator := FSLocator image.
	(locator resolve path size - 1) timesRepeat: [locator := locator / '..'].
	self assert: locator isRoot