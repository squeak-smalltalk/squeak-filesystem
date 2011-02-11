tests
testChangeDirectoryString
	filesystem workingDirectoryPath: (FSPath / 'plonk').
	filesystem changeDirectory: 'griffle'.
	self assert: (filesystem workingDirectoryPath printWithDelimiter: $/) = '/plonk/griffle'