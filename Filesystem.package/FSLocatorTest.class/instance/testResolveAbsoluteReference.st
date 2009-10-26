resolution tests
testResolveAbsoluteReference
	| result reference |
	locator := FSLocator image / 'plonk'.
	reference := FSMemoryFilesystem new root / 'griffle'.
	result := locator resolve: reference..
	self assert: result == reference