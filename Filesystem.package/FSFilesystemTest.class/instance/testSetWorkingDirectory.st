tests
testSetWorkingDirectory
	| cwd |
	filesystem workingDirectory: (FSPath / 'plonk').
	cwd := filesystem workingDirectory.
	self assert: cwd isAbsolute.
	self assert: (cwd at: 1) = 'plonk'