tests
testParentResolutionWithPath
	| base relative absolute |
	base := filesystem referenceTo: (FSPath / 'plonk' / 'pinto').
	relative := FSPath parent / 'griffle' / 'zonk'.
	absolute := base resolve: relative.
	self assert: absolute asString = 'memory:/plonk/griffle/zonk'