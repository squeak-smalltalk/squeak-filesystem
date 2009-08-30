tests
testAssureExtentionAddsExtension
	| ref result |
	ref := filesystem referenceTo: 'plonk'.
	result := ref assureExtension: 'griffle'.
	self assert: result asString = 'memory:plonk.griffle'