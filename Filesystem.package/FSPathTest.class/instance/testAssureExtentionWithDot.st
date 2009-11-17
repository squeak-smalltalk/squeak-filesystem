tests
testAssureExtentionWithDot
	| path result |
	path := FSPath with: 'plonk'.
	result := path assureExtension: '.griffle'.
	self assert: result basename = 'plonk.griffle'