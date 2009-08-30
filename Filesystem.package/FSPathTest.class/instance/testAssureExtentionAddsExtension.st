tests
testAssureExtentionAddsExtension
	| path result |
	path := 'plonk' asPath.
	result := path assureExtension: 'griffle'.
	self assert: result asString = 'plonk.griffle'