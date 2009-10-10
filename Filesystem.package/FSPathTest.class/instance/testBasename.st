tests
testBasename
	| path |
	path := (FSPath with: 'plonk') / 'griffle'.
	self assert: path basename = 'griffle'