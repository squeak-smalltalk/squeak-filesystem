tests
testBasename
	| ref |
	ref := filesystem referenceTo: 'plonk/griffle'.
	self assert: ref basename = 'griffle'