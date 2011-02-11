tests
testSetRelativeWorkingDirectory
	self 
		should: [filesystem workingDirectoryPath: (FSPath with: 'plonk')]
		raise: Error
	