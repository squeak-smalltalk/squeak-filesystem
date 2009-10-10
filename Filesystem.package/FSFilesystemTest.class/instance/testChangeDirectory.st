tests
testChangeDirectory
	filesystem workingDirectory: '/plonk'.
	filesystem changeDirectory: 'griffle'.
	self assert: filesystem workingDirectory asString = '/plonk/griffle'