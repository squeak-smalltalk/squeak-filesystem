tests
testSetRelativeWorkingDirectory
	self 
		should: [filesystem workingDirectory: 'plonk' asPath]
		raise: Error
	