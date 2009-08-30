tests
testSlash
	| path result |
	path := 'plonk' asPath.
	result := path / 'griffle'.
	self assert: result class = FSPath.
	self assert: result asString = 'plonk/griffle'