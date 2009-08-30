tests
testAsAbsoluteConverted
	| ref absolute |
	ref := filesystem referenceTo: 'plonk'.
	absolute := ref asAbsolute.
	self assert: absolute isAbsolute.
	self assert: absolute asString = 'memory:/plonk'