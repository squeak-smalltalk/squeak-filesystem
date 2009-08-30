tests
testCommaReplacesExtension
	| ref result |
	ref := filesystem referenceTo: 'plonk.griffle'.
	result := ref, 'nurp'.
	self assert: result asString = 'memory:plonk.nurp'