compatibility tests
testCommaAddsExtension
	| locator |
	locator := FSLocator image / 'griffle'.
	self assert: (locator , 'plonk') basename = 'griffle.plonk'