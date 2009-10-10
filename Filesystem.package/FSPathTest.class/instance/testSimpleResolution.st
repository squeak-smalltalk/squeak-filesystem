tests
testSimpleResolution
	| base relative absolute |
	base := '/plonk' asPath.
	relative := 'griffle/zonk' asPath.
	absolute := base resolve: relative.
	self assert: (absolute printWithDelimiter: $/) = '/plonk/griffle/zonk'