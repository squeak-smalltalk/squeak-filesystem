tests
testChangeDirectoryString
	filesystem workingDirectory: '/plonk' asPath.
	filesystem changeDirectory: 'griffle'.
	self assert: filesystem workingDirectory asString = '/plonk/griffle'