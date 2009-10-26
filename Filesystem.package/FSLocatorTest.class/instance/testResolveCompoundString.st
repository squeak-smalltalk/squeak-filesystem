resolution tests
testResolveCompoundString
	| result |
	locator := FSLocator image / 'plonk'.
	result := locator resolve: 'griffle/nurp'.
	self assert: result class = locator class.
	self assert: result origin = locator origin.
	self assert: result path = ((FSPath with: 'plonk') / 'griffle' / 'nurp')