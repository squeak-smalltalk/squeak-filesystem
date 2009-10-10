tests
testSlash
	| path actual |
	path := 'plonk' asPath.
	actual := path / 'griffle'.
	self assert: actual class = FSPath.
	self assert: (actual printWithDelimiter: $/)  = 'plonk/griffle'