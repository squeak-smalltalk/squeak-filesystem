tests
testChangeDirectory
	filesystem workingDirectory: '/plonk' asPath.
	filesystem changeDirectory: 'griffle' asPath.
	self assert: filesystem workingDirectory asString = '/plonk/griffle'