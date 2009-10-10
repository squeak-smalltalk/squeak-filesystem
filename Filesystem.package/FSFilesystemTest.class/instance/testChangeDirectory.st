tests
testChangeDirectory
	filesystem workingDirectory: '/plonk' asPath.
	filesystem changeDirectory: 'griffle' asPath.
	self assert: (filesystem workingDirectory printWithDelimiter: $/) = '/plonk/griffle'