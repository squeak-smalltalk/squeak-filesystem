compatibility tests
testBasename
	| locator |
	locator := FSLocator image / 'griffle'.
	self assert: locator basename = 'griffle'