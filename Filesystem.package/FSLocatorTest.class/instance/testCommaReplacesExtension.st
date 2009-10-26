compatibility tests
testCommaReplacesExtension
	| locator |
	locator := FSLocator image / 'griffle.plonk'.
	self assert: (locator , 'nurp') basename = 'griffle.nurp'