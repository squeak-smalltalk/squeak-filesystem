tests
testSetWorkingDirectory
	filesystem workingDirectory: '/plonk'.
	self assert: (filesystem workingDirectory printWithDelimiter: $/) = '/plonk'.