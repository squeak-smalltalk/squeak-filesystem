tests
testSimpleResolution
	| base relative absolute |
	base := filesystem referenceTo: '/plonk'.
	relative := 'griffle/zonk' asPath.
	absolute := base resolve: relative.
	self assert: absolute asString = 'memory:/plonk/griffle/zonk'