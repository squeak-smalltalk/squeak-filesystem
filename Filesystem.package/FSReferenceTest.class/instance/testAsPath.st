tests
testAsPath
	| ref path |
	ref := filesystem referenceTo: 'plonk'.
	path := ref asPath.
	self assert: path class = FSPath.
	self assert: path asString = '[plonk]'