tests
testAssureExtentionNoDuplicates
	| ref result |
	ref := filesystem referenceTo: 'plonk.griffle'.
	result := ref assureExtension: 'griffle'.
	self assert: result asString = 'memory:plonk.griffle'