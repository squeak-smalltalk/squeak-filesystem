tests
testAsAbsoluteConverted
	"In a memory file system, a reference converted to an absolute reference"
	"self debug: #testAsAbsoluteConverted"
	
	| ref absolute |
	ref := filesystem referenceTo: 'plonk'.
	absolute := ref asAbsolute.
	self assert: absolute isAbsolute.
	self assert: absolute asString = 'memory:/plonk'.
	