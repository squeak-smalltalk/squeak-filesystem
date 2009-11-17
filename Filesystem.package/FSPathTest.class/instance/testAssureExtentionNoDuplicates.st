tests
testAssureExtentionNoDuplicates
	| path result |
	path := FSPath with: 'plonk.griffle'.
	result := path assureExtension: 'griffle'.
	self assert: result basename = 'plonk.griffle'