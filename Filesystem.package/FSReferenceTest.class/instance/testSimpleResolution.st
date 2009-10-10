tests
testSimpleResolution
	| base relative absolute |
	base := filesystem referenceTo: FSPath / 'plonk'.
	relative := (FSPath with: 'griffle') / 'zonk'.
	absolute := base resolve: relative.
	self assert: absolute asString = 'memory:/plonk/griffle/zonk'