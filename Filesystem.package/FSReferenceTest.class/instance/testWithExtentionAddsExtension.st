tests
testWithExtentionAddsExtension
	| ref result |
	ref := filesystem referenceTo: 'plonk'.
	result := ref withExtension: 'griffle'.
	self assert: result asString = 'memory:plonk.griffle'