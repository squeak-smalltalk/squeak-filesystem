tests
testSlash
	| ref result |
	ref := filesystem referenceTo: 'plonk'.
	result := ref / 'griffle'.
	self assert: result class = FSReference.
	self assert: result asString = 'memory:plonk/griffle'