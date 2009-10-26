resolution tests
testResolvePath
	| result path |
	locator := FSLocator image / 'plonk'.
	result := locator resolve: (FSPath with: 'griffle').
	path := (FSPath with: 'plonk') / 'griffle'.
	self assert: result class= locator class.
	self assert: result origin = locator origin.
	self assert: result path = path.