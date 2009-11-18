tests
testWithExtentionAddsExtension
	| path result |
	path := FSPath with: 'plonk'.
	result := path withExtension: 'griffle'.
	self assert: result asString = 'plonk.griffle'