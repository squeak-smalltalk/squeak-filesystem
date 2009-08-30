tests
testPrintWithDelimiter
	| path |
	path := 'plonk/griffle' asPath.
	self assert: (path printWithDelimiter: $%) = 'plonk%griffle'