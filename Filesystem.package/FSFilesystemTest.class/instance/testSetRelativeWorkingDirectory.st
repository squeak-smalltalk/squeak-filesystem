tests
testSetRelativeWorkingDirectory
	self 
		should: [filesystem workingDirectory: (FSPath * 'plonk')]
		raise: Error
	