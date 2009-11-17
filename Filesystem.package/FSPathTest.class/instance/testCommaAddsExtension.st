tests
testCommaAddsExtension
	| path result |
	path := FSPath with: 'plonk' .
	result := path, 'griffle'.
	self assert: result asString = 'plonk.griffle'