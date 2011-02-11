tests
testSetWorkingDirectory
	filesystem workingDirectoryPath: (FSPath / 'plonk').
	self assert: (filesystem workingDirectoryPath printWithDelimiter: $/) = '/plonk'.