tests
testWithExtentionReplacesExtension
	| ref result |
	ref := filesystem referenceTo: 'plonk.griffle'.
	result := ref withExtension: 'nurp'.
	self assert: result asString = 'memory:plonk.nurp'