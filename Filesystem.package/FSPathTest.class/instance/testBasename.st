tests
testBasename
	| path |
	path := 'plonk/griffle' asPath.
	self assert: path basename = 'griffle'