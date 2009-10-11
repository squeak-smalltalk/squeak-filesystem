tests
testChangeDirectoryString
	filesystem workingDirectory: (FSPath / 'plonk').
	filesystem changeDirectory: 'griffle'.
	self assert: (filesystem workingDirectory printWithDelimiter: $/) = '/plonk/griffle'