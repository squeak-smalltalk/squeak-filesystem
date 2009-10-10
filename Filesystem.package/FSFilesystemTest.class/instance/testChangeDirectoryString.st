tests
testChangeDirectoryString
	filesystem workingDirectory: '/plonk' asPath.
	filesystem changeDirectory: 'griffle'.
	self assert: (filesystem workingDirectory printWithDelimiter: $/) = '/plonk/griffle'