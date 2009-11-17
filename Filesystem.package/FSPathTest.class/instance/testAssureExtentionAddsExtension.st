tests
testAssureExtentionAddsExtension
	| path result |
	path := FSPath with: 'plonk'.
	result := path assureExtension: 'griffle'.
	self assert: result asString = 'plonk.griffle'