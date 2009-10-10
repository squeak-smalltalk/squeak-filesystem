tests
testParentResolution
	| base relative absolute |
	base := FSPath / 'plonk' / 'pinto'.
	relative := FSPath parent / 'griffle' / 'zonk'.
	absolute := base resolve: relative.
	self assert: (absolute printWithDelimiter: $/) = '/plonk/griffle/zonk'