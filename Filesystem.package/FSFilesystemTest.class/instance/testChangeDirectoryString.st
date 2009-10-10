tests
testChangeDirectoryString
	filesystem workingDirectory: '/plonk'.
	filesystem changeDirectory: 'griffle'.
	self assert: (filesystem workingDirectory printWithDelimiter: $/) = '/plonk/griffle'