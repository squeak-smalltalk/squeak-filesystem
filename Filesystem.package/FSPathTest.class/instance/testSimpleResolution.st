tests
testSimpleResolution
	| base relative absolute |
	base := FSPath / 'plonk'.
	relative := (FSPath with: 'griffle') / 'zonk'.
	absolute := base resolve: relative.
	self assert: (absolute printWithDelimiter: $/) = '/plonk/griffle/zonk'