tests
testChangeDirectoryString
	| cwd |
	filesystem workingDirectory: (FSPath / 'plonk').
	filesystem changeDirectory: 'griffle'.
	cwd := filesystem workingDirectory.
	self assert: cwd isAbsolute.
	self assert: (cwd at: 1) = 'plonk'.
	self assert: (cwd at: 2) = 'griffle'