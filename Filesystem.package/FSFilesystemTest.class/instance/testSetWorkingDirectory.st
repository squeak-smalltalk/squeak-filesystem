tests
testSetWorkingDirectory
	filesystem workingDirectory: '/plonk' asPath.
	self assert: (filesystem workingDirectory printWithDelimiter: $/) = '/plonk'.