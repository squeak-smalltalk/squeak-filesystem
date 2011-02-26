tests
testWithExtentionAddsExtension
	| path result |
	path := FSPath * 'plonk'.
	result := path withExtension: 'griffle'.
	self assert: result asString = 'plonk.griffle'