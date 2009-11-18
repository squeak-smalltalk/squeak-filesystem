compatibility tests
testWithExtensionAddsExtension
	| locator |
	locator := FSLocator image / 'griffle'.
	self assert: (locator withExtension: 'plonk') basename = 'griffle.plonk'