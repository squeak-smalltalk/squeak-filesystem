tests
testCommaAddsExtension
	| ref result |
	ref := filesystem referenceTo: 'plonk'.
	result := ref, 'griffle'.
	self assert: result asString = 'memory:plonk.griffle'