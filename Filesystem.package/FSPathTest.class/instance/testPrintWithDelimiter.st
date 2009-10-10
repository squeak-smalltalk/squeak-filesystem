tests
testPrintWithDelimiter
	| path |
	path := (FSPath with: 'plonk') / 'griffle'.
	self assert: (path printWithDelimiter: $%) = 'plonk%griffle'