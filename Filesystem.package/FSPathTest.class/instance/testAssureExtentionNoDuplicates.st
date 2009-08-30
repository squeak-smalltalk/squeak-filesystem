tests
testAssureExtentionNoDuplicates
	| path result |
	path := 'plonk.griffle' asPath.
	result := path assureExtension: 'griffle'.
	self assert: result asString = 'plonk.griffle'