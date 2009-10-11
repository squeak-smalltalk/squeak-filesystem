tests
testSetWorkingDirectory
	filesystem workingDirectory: (FSPath / 'plonk').
	self assert: (filesystem workingDirectory printWithDelimiter: $/) = '/plonk'.