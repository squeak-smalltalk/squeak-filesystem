tests
testSlash
	| path actual |
	path := FSPath with: 'plonk'.
	actual := path / 'griffle'.
	self assert: actual class = FSPath.
	self assert: (actual printWithDelimiter: $/)  = 'plonk/griffle'