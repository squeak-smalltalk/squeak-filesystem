tests
testSetRelativeWorkingDirectory
	filesystem workingDirectory: (FSPath / 'plonk').
	filesystem workingDirectory: (FSPath with: 'griffle').
	self assert: filesystem workingDirectory = (FSPath / 'plonk' / 'griffle')
