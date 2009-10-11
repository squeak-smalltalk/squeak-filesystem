tests
testSetRelativeWorkingDirectory
	self 
		should: [filesystem workingDirectory: (FSPath with: 'plonk')]
		raise: Error
	